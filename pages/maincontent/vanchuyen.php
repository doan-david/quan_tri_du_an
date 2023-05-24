<p>hình thức vận chuyển</p>
<link rel="stylesheet" type="text/css" href="css/bargiohang.css">
<div class="wrap">
    <div class="progress"> <span> <a href="index.php?quanly=giohang" > <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=vanchuyen" > <i class="fa-solid fa-truck-fast"></i>Vận chuyển</a></span> </div>
    <div class="progress"> <span><a href="index.php?quanly=thongtinthanhtoan" ><i class="fa-solid fa-credit-card"></i>Thanh toán</a><span> </div>
    <div class="progress"> <span><a href="index.php?quanly=lichsudonhang" > <i class="fa-solid fa-clock-rotate-left"></i>Lịch sử đơn hàng</a><span> </div>
</div>
<h4 style="margin-top:10px">Thông tin vận chuyển</h4>
<?php 
  if(isset($_POST['themvanchuyen'])){
    $name=$_POST['name'];
    $phone=$_POST['phone'];
    $address=$_POST['address'];
    $note=$_POST['note'];
    $id_dangky=$_SESSION['id_khachhang'];
    $sql_them_vanchuyen=mysqli_query($mysqli,"INSERT INTO tbl_shipping(name, phone, address, note, id_dangky) VALUES ('".$name."','".$phone."','".$address."','".$note."','".$id_dangky."')");
    if($sql_them_vanchuyen){
      echo'<script>alert("thêm thông tin vận chuyển thành công")</script>';
    }
  }elseif(isset($_POST['capnhatvanchuyen'])){
    $name=$_POST['name'];
    $phone=$_POST['phone'];
    $address=$_POST['address'];
    $note=$_POST['note'];
    $id_dangky=$_SESSION['id_khachhang'];
    $sql_update_vanchuyen=mysqli_query($mysqli,"UPDATE tbl_shipping SET name='".$name."',phone='".$phone."',address='".$address."',note='".$note."',id_dangky='$id_dangky' WHERE id_dangky='$id_dangky'");
    if($sql_update_vanchuyen){
      echo'<script>alert("cập nhật thông tin vận chuyển thành công")</script>';
    }
  }
?>
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
  <form action="" method="POST">
    <div class="col-md-12">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Họ và tên</label>
        <input type="text" name="name" placeholder="nhập họ và tên của bạn...." value="<?php echo $name?>" class="form-control"  >
        <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Số điện thoại</label>
        <input type="text" name="phone" placeholder="nhập số điện thoại của bạn....." value="<?php echo $phone?>" class="form-control" >
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Địa chỉ</label>
        <input type="text" name="address" placeholder="nhập địa chỉ của bạn...." value="<?php echo $address?>" class="form-control" >
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Ghi chú</label>
        <input type="text" name="note" placeholder="Nhập điều bạn muốn chi chú..." value="<?php echo $note?>" class="form-control" >
      </div>
      <?php 
        if($name==''&& $phone==''){
      ?>
      <button type="submit" name="themvanchuyen" class="btn btn-primary">Thêm thông tin vận chuyển</button>
      <?php 
        }elseif($name!=''&& $phone!=''){
      ?>
      <button type="submit" name="capnhatvanchuyen" class="btn btn-success">Cập nhật thông tin vận chuyển</button>
      <?php 
        }
      ?>
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
                <div style="clear:both">
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
                </div>
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
  </form>
</div>