<p>thông tin lịch sử đơn hàng</p>
<link rel="stylesheet" type="text/css" href="css/bargiohang.css">
<div class="wrap">
    <div class="progress"> <span> <a href="index.php?quanly=giohang" > <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=vanchuyen" > <i class="fa-solid fa-truck-fast"></i>Vận chuyển</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=thongtinthanhtoan" ><i class="fa-solid fa-credit-card"></i>Thanh toán</a><span> </div>
    <div class="progress"> <span><a href="index.php?quanly=lichsudonhang" > <i class="fa-solid fa-clock-rotate-left"></i>Lịch sử đơn hàng</a><span> </div>
</div>
<h3 style="margin-top:10px">lịch sử đơn hàng</h3>
<?php
    if(isset($_SESSION['dangky'])){
      echo 'Xin chào: '.'<span style="color:green">'.$_SESSION['dangky'].'</span>'.' ';
      echo $_SESSION['id_khachhang'];
    }
    $id_khachhang=$_SESSION['id_khachhang'];
    $sql_lietke_dh="SELECT * FROM tbl_cart,tbl_dangky WHERE tbl_cart.id_khachhang=tbl_dangky.id_dangky AND tbl_cart.id_khachhang='$id_khachhang' ORDER BY tbl_cart.id_cart DESC";
    $query_lietke_dh=mysqli_query($mysqli,$sql_lietke_dh);
?>
<table style="width:100%" border="1" style="border-collapse:collapse;">
  <tr>
    <th>Id</th>
    <th>Mã đơn hàng</th>
    <th>Tên khách hàng</th>
    <th>Địa chỉ</th>
    <th>Email</th>
    <th>số điện thoại</th>
    <th>Tình trạng</th>
    <th>Ngày đặt</th>
    <th>Hình thức</th>
    <th>Quản lý</th>
    <th>In đơn hàng</th>
  </tr>
  <?php
    $i = 0;
    while($row=mysqli_fetch_array($query_lietke_dh)){
      $i++;
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tenkhachhang'] ?></td>
    <td><?php echo $row['diachi'] ?></td>
    <td><?php echo $row['email'] ?></td>
    <td><?php echo $row['dienthoai'] ?></td>
    <td>
        <?php
            if($row['cart_status']==1)
            {
                echo'Đang chờ xử lý';
            }else{
                echo'Đã được xử lý';
            }
        ?>
    </td>
    <td><?php echo $row['cart_date'] ?></td>
    <td>
      <?php
        if($row['cart_payment']=='vnpay'){
      ?> 
      <a href="index.php?quanly=lichsudonhang&congthanhtoan=<?php echo $row['cart_payment']?>&code_cart=<?php echo $row['code_cart'] ?>"><?php echo $row['cart_payment']; ?></a>
      <?php
        }else{
          echo $row['cart_payment'];
        }
      ?>
    </td>
    <td>
      <a href="index.php?quanly=xemdonhang&code=<?php echo $row['code_cart'] ?>">Xem đơn hàng</a>
    </td>
    <td>
      <a href="pages/maincontent/indonhang.php?code=<?php echo $row['code_cart'] ?>">In đơn hàng</a>
    </td>
  </tr>
  <?php
  }
  ?>
</table>
<?php 
  if(isset($_GET['congthanhtoan'])||isset($_GET['code_cart'])){

    $congthanhtoan=$_GET['congthanhtoan'];
    $code_cart=$_GET['code_cart'];
    echo'<h4>Chi tiết đơn hàng thanh toán qua cổng thanh toán: '. $congthanhtoan.', với mã đơn hàng: '.$code_cart.' </h4>';
    if($congthanhtoan=='vnpay'){
      $sql_vnpay=mysqli_query($mysqli,"SELECT * FROM tbl_vnpay WHERE code_cart='".$code_cart."'LIMIT 1");
      $row_vnpay=mysqli_fetch_array($sql_vnpay);
?>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">Vnpay Amount</th>
      <th scope="col">Vnpay BankCode</th>
      <th scope="col">Vnpay BankTranNo</th>
      <th scope="col">Vnpay CardType</th>
      <th scope="col">Vnpay OrderInfo</th>
      <th scope="col">Vnpay PayDate</th>
      <th scope="col">Vnpay TmnCode</th>
      <th scope="col">Vnpay TranSactionNo</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><?php echo $row_vnpay['vnpay_amount']?></td>
      <td><?php echo $row_vnpay['vnpay_bankcode']?></td>
      <td><?php echo $row_vnpay['vnpay_banktranno']?></td>
      <td><?php echo $row_vnpay['vnpay_cardtype']?></td>
      <td><?php echo $row_vnpay['vnpay_orderinfo']?></td>
      <td><?php echo $row_vnpay['vnpay_paydate']?></td>
      <td><?php echo $row_vnpay['vnpay_tmncode']?></td>
      <td><?php echo $row_vnpay['vnpay_transactionno']?></td>
    </tr>
  </tbody>
</table>
<?php
    }
  }
?>