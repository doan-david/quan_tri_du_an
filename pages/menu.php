
<?Php
$sql_danhmuc="SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc ASC ";
$query_danhmuc=mysqli_query($mysqli,$sql_danhmuc);
?>
<!-- menu -->
<?php
    if(isset($_GET['dangxuat']) && ($_GET['dangxuat'])=='1'){
        unset($_SESSION['dangky']);
    }
?>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #4eabb5;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php"><img  width="50px" src="images/logo.png"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Trang chủ</a>
        </li>

        <li class="nav-item"><a class="nav-link" href="index.php?quanly=giohang"> Giỏ hàng</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php?quanly=tintuc"> Tin tức</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php?quanly=lienhe"> Liên hệ</a></li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Danh mục sản phẩm
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <?php
            while($row_danhmuc=mysqli_fetch_array($query_danhmuc)){
            ?>
            <li><a class="dropdown-item" href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmuc['id_danhmuc']?>"><?php echo $row_danhmuc['tendanhmuc']?></a></li>
            <?php
            }
            ?>
          </ul>
        </li>

        <?php 
            if(isset($_SESSION['dangky'])){
        ?>
        <li class="nav-item dropdown" style="margin-left:360px;">
          
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user"></i>
            <?php echo $_SESSION['dangky']?>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="index.php?dangxuat=1"> Đăng xuất</a></li>
            <li><a class="dropdown-item" href="index.php?quanly=thaydoimatkhau"> Đổi mật khẩu</a></li>
            <li><a class="dropdown-item" href="index.php?quanly=lichsudonhang"> Lịch sử đơn hàng</a></li>
        </ul>
        </li>
        <?php
            }else{
        ?>
        <li class="nav-item"><a class="nav-link" href="index.php?quanly=dangky"> Đăng ký</a></li>
        <li class="nav-item dropdown" style="margin-left:360px;">
          
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Đăng nhập
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
          <li ><a class="dropdown-item" href="index.php?quanly=dangnhap"> User</a></li>
        <li ><a class="dropdown-item" href="admincp/login.php">Admin</a></li>
        </ul>
        </li>
        <?php
            }
        ?>
        

      </ul>
      <form class="d-flex" action="index.php?quanly=timkiem" method="POST">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="tukhoa">
        <button class="btn btn-outline-success" type="submit" name="timkiem" style="background:#e3f2fd;">Search</button>
      </form>
    </div>
  </div>
</nav>

<!-- <div class="menu">
    <ul class="list_menu">
        <li><a href="index.php">Trang chủ</a></li>
        <?php
        while($row_danhmuc=mysqli_fetch_array($query_danhmuc)){
        ?>
        <li><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmuc['id_danhmuc']?>"><?php echo $row_danhmuc['tendanhmuc']?></a></li>
        <?php
        }
        ?>
        <li><a href="index.php?quanly=giohang"> Giỏ hàng</a></li>
        <li><a href="index.php?quanly=tintuc"> Tin tức</a></li>
        <li><a href="index.php?quanly=lienhe"> Liên hệ</a></li>
        <?php 
            if(isset($_SESSION['dangky'])){
        ?>
        <li><a href="index.php?dangxuat=1"> Đăng xuất</a></li>
        <li><a href="index.php?quanly=thaydoimatkhau"> Đổi mật khẩu</a></li>
        <?php
            }else{
        ?>
        <li><a href="index.php?quanly=dangky"> Đăng ký</a></li>
        <?php
            }
        ?>
        <li>
            <form action="index.php?quanly=timkiem" method="POST">
                <input type="text" placeholder="tìm kiếm sản phẩm....." name="tukhoa">
                <input type="submit" name="timkiem" value="tìm kiếm">
            </form>
        </li>
    </ul>

</div> -->