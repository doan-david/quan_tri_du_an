<p>hình thức vận chuyển</p>
<link rel="stylesheet" type="text/css" href="css/bargiohang.css">
<div class="wrap">
    <div class="progress"> <span> <a href="index.php?quanly=giohang" > <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=vanchuyen" > <i class="fa-solid fa-truck-fast"></i>Vận chuyển</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=thongtinthanhtoan" ><i class="fa-solid fa-credit-card"></i>Thanh toán</a><span> </div>
    <div class="progress"> <span><a href="index.php?quanly=lichsudonhang" > <i class="fa-solid fa-clock-rotate-left"></i>Lịch sử đơn hàng</a><span> </div>
</div>
<h4 style="margin-top:10px">Thông tin vận chuyển</h4>

<div class="row">
 
  <form action="" method="POST">
    <div class="col-md-12">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Họ và tên</label>
        <input type="text" name="name" placeholder="nhập họ và tên của bạn...." value="" class="form-control"  >
        <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Số điện thoại</label>
        <input type="text" name="phone" placeholder="nhập số điện thoại của bạn....." value="" class="form-control" >
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Địa chỉ</label>
        <input type="text" name="address" placeholder="nhập địa chỉ của bạn...." value="" class="form-control" >
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Ghi chú</label>
        <input type="text" name="note" placeholder="Nhập điều bạn muốn chi chú..." value="" class="form-control" >
      </div>
      
      <button type="submit" name="themvanchuyen" class="btn btn-primary">Thêm thông tin vận chuyển</button>
      
      <button type="submit" name="capnhatvanchuyen" class="btn btn-success">Cập nhật thông tin vận chuyển</button>
     
      <!-- giỏ hàng -->
      <table style="margin-top:10px" style="width:100%;text-align:center;border-collapse:collapse;" border="1">
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
        <td> </td>
        <td> <img width="150px" src="admincp/modules/qlsanpham/uploads/"></td>
        <td> </td>
        <td> 
            <a href="pages/maincontent/themgiohang.php?cong="><i class="fa-solid fa-square-plus"></i></a>
            
            <a href="pages/maincontent/themgiohang.php?tru="><i class="fa-solid fa-square-minus"></i></a>
        </td>
        <td> </i></td>
        <td> </td>
      </tr>
       
        <tr>
            <td colspan="8">
                <p style="float:left;"> Tổng tiền:<?php echo number_format($tongtien,0,',','.').'vnđ'?></p><br>
                <div style="clear:both">
                    
                </div>
            </td>
        </tr>
       
        <tr>
            <td colspan="8"><p> Hiện tại giỏ hàng trống</p></td>
        </tr>
       

    </table>
    </div>
  </form>
</div>