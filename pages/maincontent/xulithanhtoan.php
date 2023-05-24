<p>Thanh toán đơn hàng</p>
<?php
    session_start();
    include("../../admincp/config/connect.php");
    require("../../mail/sendmail.php");
    require("../../carbon/autoload.php");
    require_once("config_vnpay.php");
    use Carbon\Carbon;
    use Carbon\CarbonInterval;
    $now=Carbon::now('Asia/Ho_Chi_Minh');
    $id_khachhang=$_SESSION['id_khachhang'];
    $code_order=rand(0,9999);
    $cart_payment=$_POST['payment'];
    //lay id thong tin van chuyen
    $id_dangky=$_SESSION['id_khachhang'];
    $sql_get_vanchuyen=mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_dangky' LIMIT 1");
    $row_get_vanchuyen=mysqli_fetch_array($sql_get_vanchuyen);
    $id_shipping=$row_get_vanchuyen['id_shipping'];

    $tongtien=0;
    foreach ($_SESSION['cart'] as $key => $value) {
        $thanhtien=$value['soluong']*$value['giasp'];//tính giá nhân số lượng
        $tongtien+=$thanhtien;
    }

    if($cart_payment=="tiền mặt"||$cart_payment=="chuyển khoản"){
        //insert vai don hang
        $insert_cart="INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";
        $cart_query= mysqli_query($mysqli,$insert_cart);
        //them don hang chi tiet
        if($cart_query){
            foreach ($_SESSION['cart'] as $key => $value) {
                $id_sanpham=$value['id'];
                $soluong=$value['soluong'];
                $insert_order_details="INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
                mysqli_query($mysqli,$insert_order_details);
            }
        }
    }elseif($cart_payment=="vnpay"){
        //tich hop vnpay
        $vnp_TxnRef = $code_order; //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = 'Thanh toán đơn hàng tại web';
        $vnp_OrderType = 'bill payment';
        //tinh tong tien
        $total=0;

        $vnp_Amount = $tongtien * 100;
        $vnp_Locale = 'vn';
        $vnp_BankCode = 'NCB';
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
        //Add Params of 2.0.1 Version
        $vnp_ExpireDate = $expire;
        //Billing
        // $vnp_Bill_Mobile = $_POST['txt_billing_mobile'];
        // $vnp_Bill_Email = $_POST['txt_billing_email'];
        // $fullName = trim($_POST['txt_billing_fullname']);
        // if (isset($fullName) && trim($fullName) != '') {
        //     $name = explode(' ', $fullName);
        //     $vnp_Bill_FirstName = array_shift($name);
        //     $vnp_Bill_LastName = array_pop($name);
        // }
        // $vnp_Bill_Address=$_POST['txt_inv_addr1'];
        // $vnp_Bill_City=$_POST['txt_bill_city'];
        // $vnp_Bill_Country=$_POST['txt_bill_country'];
        // $vnp_Bill_State=$_POST['txt_bill_state'];
        // // Invoice
        // $vnp_Inv_Phone=$_POST['txt_inv_mobile'];
        // $vnp_Inv_Email=$_POST['txt_inv_email'];
        // $vnp_Inv_Customer=$_POST['txt_inv_customer'];
        // $vnp_Inv_Address=$_POST['txt_inv_addr1'];
        // $vnp_Inv_Company=$_POST['txt_inv_company'];
        // $vnp_Inv_Taxcode=$_POST['txt_inv_taxcode'];
        // $vnp_Inv_Type=$_POST['cbo_inv_type'];
        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
            "vnp_ExpireDate"=>$vnp_ExpireDate
            // "vnp_Bill_Mobile"=>$vnp_Bill_Mobile,
            // "vnp_Bill_Email"=>$vnp_Bill_Email,
            // "vnp_Bill_FirstName"=>$vnp_Bill_FirstName,
            // "vnp_Bill_LastName"=>$vnp_Bill_LastName,
            // "vnp_Bill_Address"=>$vnp_Bill_Address,
            // "vnp_Bill_City"=>$vnp_Bill_City,
            // "vnp_Bill_Country"=>$vnp_Bill_Country,
            // "vnp_Inv_Phone"=>$vnp_Inv_Phone,
            // "vnp_Inv_Email"=>$vnp_Inv_Email,
            // "vnp_Inv_Customer"=>$vnp_Inv_Customer,
            // "vnp_Inv_Address"=>$vnp_Inv_Address,
            // "vnp_Inv_Company"=>$vnp_Inv_Company,
            // "vnp_Inv_Taxcode"=>$vnp_Inv_Taxcode,
            // "vnp_Inv_Type"=>$vnp_Inv_Type
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        // if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
        //     $inputData['vnp_Bill_State'] = $vnp_Bill_State;
        // }

        //var_dump($inputData);
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashdata .= urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret);//  
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
        }
        $returnData = array('code' => '00'
            , 'message' => 'success'
            , 'data' => $vnp_Url);
        if (isset($_POST['redirect'])) {
            //insert vai don hang
            $insert_cart="INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";
            $cart_query= mysqli_query($mysqli,$insert_cart);
            //them don hang chi tiet
            if($cart_query){
                foreach ($_SESSION['cart'] as $key => $value) {
                    $id_sanpham=$value['id'];
                    $soluong=$value['soluong'];
                    $insert_order_details="INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
                    mysqli_query($mysqli,$insert_order_details);
                }
            }
            $_SESSION['code_cart']=$code_order;
            unset($_SESSION['cart']);
            header('Location: ' . $vnp_Url);
            die();
            } else {
                echo json_encode($returnData);
            }
        
        }
        if($cart_query){
        // $tieude="Đặt hàng website bán sách thành công";
        // $noidung="<p>cảm ơn quý khách đã đặt hàng của chúng tôi với mã đơn hàng: ".$code_order."</p>";
        // $noidung.="<h4>nội dung đơn hàng bao gồm:</h4>";
        // foreach($_SESSION['cart'] as $key=>$val){
        //     $noidung.="
        //         <ul style='border: 1px solid blue; margin:10px;'>
        //             <li>tên sản phẩm: ".$val['tensanpham']."</li>
        //             <li>mã sản phẩm: ".$val['masp']."</li>
        //             <li>giá sản phẩm: ".number_format($val['giasp'],0,',','.')."vnđ</li>
        //             <li>số lượng: ".$val['soluong']."</li>
        //         </ul>
        //     ";
        // }
        // $maildathang= $_SESSION['email'];
        // $mail=new Mailer();
        // $mail->dathangmail($tieude,$noidung,$maildathang);
        }
    unset($_SESSION['cart']);
    header('Location:../../index.php?quanly=camon');

?>