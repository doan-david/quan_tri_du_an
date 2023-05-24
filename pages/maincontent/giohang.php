<p>Giỏ hàng</p>


<link rel="stylesheet" type="text/css" href="css/bargiohang.css">

<div class="wrap">
    <div class="progress"> <span> <a href="index.php?quanly=giohang" > <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=vanchuyen" > <i class="fa-solid fa-truck-fast"></i>Vận chuyển</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=thongtinthanhtoan" ><i class="fa-solid fa-credit-card"></i>Thanh toán</a><span> </div>
    <div class="progress"> <span><a href="index.php?quanly=lichsudonhang" > <i class="fa-solid fa-clock-rotate-left"></i>Lịch sử đơn hàng</a><span> </div>
</div>

<table style="width:100%;text-align:center;border-collapse:collapse;margin-top:10px" border="1">
  <tr>
    <th>Id</th>
    <th>mã sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Tên sản phẩm</th>
    <th>Số lượng</th>
    <th>giá sản phẩm</th>
    <th>Thành tiền</th>
    <th>Quản lý</th>
  </tr>
   

  <tr>
    <td> <?php echo $i; ?></td>
    <td> <?php echo $cart_item['masp'];?></td>
    <td> <img width="150px" src="admincp/modules/qlsanpham/uploads/<?php echo $cart_item['hinhanh']?>"></td>
    <td> <?php echo $cart_item['tensanpham'];?></td>
    <td> 
        <a href="pages/maincontent/themgiohang.php?cong="><i class="fa-solid fa-square-plus"></i></a>
        
        <a href="pages/maincontent/themgiohang.php?tru="><i class="fa-solid fa-square-minus"></i></a>
    </td>
    <td> </i></td>
    <td> </td>
    <td><a href="pages/maincontent/themgiohang.php?xoa="><i class="fa-solid fa-trash-can"></a></td>
  </tr>

    <tr>
        <td colspan="8">
            <p style="float:left;"> Tổng tiền:</p><br>
            <p style="float:right;"><a href="pages/maincontent/themgiohang.php?xoatatca=1">Xóa tất cả</a></p>
            <div style="clear:both">
               
                    <p><a href="index.php?quanly=vanchuyen">Hình thức vận chuyển</a></p>
                
                    <p><a href="index.php?quanly=dangky">Đăng ký và đặt hàng</a></p>
               
            </div>
        </td>
    </tr>
   
    <tr>
        <td colspan="8"><p> Hiện tại giỏ hàng trống</p></td>
    </tr>
   

</table>