<p>thông tin lịch sử đơn hàng</p>
<link rel="stylesheet" type="text/css" href="css/bargiohang.css">
<div class="wrap">
    <div class="progress"> <span> <a href="index.php?quanly=giohang" > <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=vanchuyen" > <i class="fa-solid fa-truck-fast"></i>Vận chuyển</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=thongtinthanhtoan" ><i class="fa-solid fa-credit-card"></i>Thanh toán</a><span> </div>
    <div class="progress"> <span><a href="index.php?quanly=lichsudonhang" > <i class="fa-solid fa-clock-rotate-left"></i>Lịch sử đơn hàng</a><span> </div>
</div>
<h3 style="margin-top:10px">lịch sử đơn hàng</h3>

<table class="row" style="width:100%" border="1" style="border-collapse:collapse;">
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
 
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>
        
    </td>
    <td></td>
    <td>
      
      <a href="index.php?quanly=lichsudonhang&congthanhtoan=&code_cart="></a>
      
    </td>
    <td>
      <a href="index.php?quanly=xemdonhang&code=">Xem đơn hàng</a>
    </td>
    <td>
      <a href="pages/maincontent/indonhang.php?code=">In đơn hàng</a>
    </td>
  </tr>
  
</table>

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
