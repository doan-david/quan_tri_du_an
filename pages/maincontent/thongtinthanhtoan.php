<p>thông tin thanh toán</p>
<link rel="stylesheet" type="text/css" href="css/bargiohang.css">
<div class="wrap">
    <div class="progress"> <span> <a href="index.php?quanly=giohang" > <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=vanchuyen" > <i class="fa-solid fa-truck-fast"></i>Vận chuyển</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=thongtinthanhtoan" ><i class="fa-solid fa-credit-card"></i>Thanh toán</a><span> </div>
    <div class="progress"> <span><a href="index.php?quanly=lichsudonhang" > <i class="fa-solid fa-clock-rotate-left"></i>Lịch sử đơn hàng</a><span> </div>
</div>
<form action="pages/maincontent/xulythanhtoan.php" method="POST">
<div class="row">
  
   
      <div style="margin-top:10px" class="col-md-8">
        <h4>thông tin vận chuyển và giỏ hàng</h4>
        <ul style="list-style:none">
          <li>Họ và tên: <b></b></li>
          <li>Số điện thoại: <b></b></li>
          <li>Địa chỉ: <b></b></li>
          <li>Ghi chú: <b></b></li>
        </ul>
        <h5>Giỏ hàng của bạn</h5>
        <table style="width:100%;text-align:center;border-collapse:collapse;" border="1">
      <tr>
        <th>Id</th>
        <th>mã sản phẩm</th>
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Số lượng</th>
        <th>giá sản phẩm</th>
        <th>Thành tiền</th>
      </tr>
        
      <tr>
        <td> </td>
        <td></td>
        <td> <img width="150px" src="admincp/modules/qlsanpham/uploads/"></td>
        <td> </td>
        <td> 
            <a href="pages/maincontent/themgiohang.php?cong="><i class="fa-solid fa-square-plus"></i></a>
           
            <a href="pages/maincontent/themgiohang.php?tru="><i class="fa-solid fa-square-minus"></i></a>
        </td>
        <td> </i></td>
        <td></td>
      </tr>
        
        <tr>
            <td colspan="8">
                <p style="float:left;"> Tổng tiền:</p><br>
                <!-- <div style="clear:both">
                    
                </div> -->
            </td>
        </tr>
        
        <tr>
            <td colspan="8"><p> Hiện tại giỏ hàng trống</p></td>
        </tr>
        

    </table>
      </div>
      <div style="margin-top:10px" class="col-md-4">
        <h4>phương thức thanh toán</h4>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="payment" id="flexRadioDefault1" value="tiền mặt">
            <label class="form-check-label" for="flexRadioDefault1">
            <img class="img img-resposive" width="35px" src="images/tienmat.png" alt="">  
            Thanh toán tiền mặt
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="payment" id="flexRadioDefault2" value="chuyển khoản">
            <label class="form-check-label" for="flexRadioDefault2">
            <img class="img img-resposive" width="35px" src="images/chuyenkhoan.png" alt="">
            Chuyển khoản
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="payment" id="flexRadioDefault3" value="vnpay" checked>
            <label class="form-check-label" for="flexRadioDefault3">
                <img class="img img-resposive" width="35px" src="images/vnpay.jpg" alt="">
                Thanh toán qua ví VNPAY
            </label>
          </div>
          <div>
            <input type="submit" value="Thanh toán ngay" name="redirect" class="btn btn-dark">
          </div>
      </div>
 
</div>
</form>