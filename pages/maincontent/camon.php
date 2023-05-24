<?php 
    include('admincp/config/connect.php');
    require('carbon/autoload.php');
    use Carbon\Carbon;
    use Carbon\CarbonInterval;

    $now=Carbon::now('Asia/Ho_Chi_Minh');

    if(isset($_GET['vnp_Amount'])){
        $vnp_Amount=$_GET['vnp_Amount'];
        $vnp_BankCode=$_GET['vnp_BankCode'];
        $vnp_BankTranNo=$_GET['vnp_BankTranNo'];
        $vnp_CardType=$_GET['vnp_CardType'];
        $vnp_OrderInfo=$_GET['vnp_OrderInfo'];
        $vnp_PayDate=$_GET['vnp_PayDate'];
        $vnp_TmnCode=$_GET['vnp_TmnCode'];
        $vnp_TransactionNo=$_GET['vnp_TransactionNo'];
        $code_cart=$_SESSION['code_cart'];

        $insert_vnpay="INSERT INTO tbl_vnpay(vnpay_amount,vnpay_bankcode,vnpay_banktranno,vnpay_cardtype,vnpay_orderinfo,vnpay_paydate,vnpay_tmncode,vnpay_transactionno,code_cart) VALUE('".$vnp_Amount."','".$vnp_BankCode."','".$vnp_BankTranNo."','".$vnp_CardType."','".$vnp_OrderInfo."','".$vnp_PayDate."','".$vnp_TmnCode."','".$vnp_TransactionNo."','".$code_cart."')";
        $cart_query=mysqli_query($mysqli,$insert_vnpay);
        if($cart_query){
            echo '<h3>Giao dịch thanh toán qua ví VNPAY thành công</h3>';
            echo '<p>Vui lòng vào trang <a target="_bank" href="index.php?quanly=lichsudonhang"> Lịch sử đơn hàng </a> để xem chi tiết đơn hàng của bạn</p>';
        }else{
            echo '<h3>Giao dịch thanh toán qua ví VNPAY không thành công</h3>';
        }
    }
?>
<p>Cảm ơn bạn đã mua hàng, chúng tôi sẽ liên hệ với bạn trong thời gian mới nhất</p>
<p>Mọi thông tin chi tiết xin vui lòng liên hệ</p>
<p>Số điện thoại: 0978390481</p>
<p>Email: nguyenhuuchien17112k2@gmail.com</p>