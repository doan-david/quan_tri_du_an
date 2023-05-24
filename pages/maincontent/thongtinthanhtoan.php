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
  
    <?php 
        $id_dangky=$_SESSION['id_khachhang'];
        $sql_get_vanchuyen=mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_dangky' LIMIT 1");
        $count=mysqli_num_rows($sql_get_vanchuyen);
        if($count>0){
          $row_get_vanchuyen=mysqli_fetch_array($sql_get_vanchuyen);
          $name=$row_get_vanchuyen['name'];
          $phone=$row_get_vanchuyen['phone'];
          $address=$row_get_vanchuyen['address'];
          $note=$row_get_vanchuyen['note'];
        }else{
          $name='';
          $phone='';
          $address='';
          $note='';
        }
      ?>
      <div style="margin-top:10px" class="col-md-8">
        <h4>thông tin vận chuyển và giỏ hàng</h4>
        <ul style="list-style:none">
          <li>Họ và tên: <b><?php echo $name ?></b></li>
          <li>Số điện thoại: <b><?php echo $phone ?></b></li>
          <li>Địa chỉ: <b><?php echo $address ?></b></li>
          <li>Ghi chú: <b><?php echo $note ?></b></li>
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
        <?php
            if(isset($_SESSION['cart'])){
                $i=0;
                $tongtien=0;
                foreach ($_SESSION['cart'] as $cart_item){
                    $thanhtien=$cart_item['soluong']*$cart_item['giasp'];//tính giá nhân số lượng
                    $tongtien+=$thanhtien;
                    $i++;
        ?>

      <tr>
        <td> <?php echo $i; ?></td>
        <td> <?php echo $cart_item['masp'];?></td>
        <td> <img width="150px" src="admincp/modules/qlsanpham/uploads/<?php echo $cart_item['hinhanh']?>"></td>
        <td> <?php echo $cart_item['tensanpham'];?></td>
        <td> 
            <a href="pages/maincontent/themgiohang.php?cong=<?php echo $cart_item['id']?>"><i class="fa-solid fa-square-plus"></i></a>
            <?php echo $cart_item['soluong'];?>
            <a href="pages/maincontent/themgiohang.php?tru=<?php echo $cart_item['id']?>"><i class="fa-solid fa-square-minus"></i></a>
        </td>
        <td> <?php echo number_format($cart_item['giasp'],0,',','.').'vnđ';?></i></td>
        <td> <?php echo number_format($thanhtien,0,',','.').'vnđ'?></td>
      </tr>
        <?php
            }
        ?>
        <tr>
            <td colspan="8">
                <p style="float:left;"> Tổng tiền:<?php echo number_format($tongtien,0,',','.').'vnđ'?></p><br>
                <!-- <div style="clear:both">
                    <?php
                        if(isset($_SESSION['dangky'])){
                    ?>
                        <p><a href="index.php?quanly=thongtinthanhtoan">Hình thức thanh toán</a></p>
                    <?php
                        }else{
                    ?>
                        <p><a href="index.php?quanly=dangky">Đăng ký và đặt hàng</a></p>
                    <?php
                        }
                    ?>
                </div> -->
            </td>
        </tr>
        <?php
        }else{
        ?>
        <tr>
            <td colspan="8"><p> Hiện tại giỏ hàng trống</p></td>
        </tr>
        <?php
            }
        ?>

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