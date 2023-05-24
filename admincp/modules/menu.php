

<!-- <ul class="list_admincp">
    <li><a href="index.php">Trang chính</a></li>
    <li><a href="index.php?action=quanlydanhmucsanpham&query=them">Quản lý danh mục sản phẩm</a></li>
    <li><a href="index.php?action=quanlysanpham&query=them">Quản lý sản phẩm</a></li>
    <li><a href="index.php?action=quanlydanhmucbaiviet&query=them">Quản lý danh mục bài viết</a></li>
    <li><a href="index.php?action=quanlybaiviet&query=them">Quản lý bài viết</a></li>
    <li><a href="index.php?action=quanlydonhang&query=lietke">Quản lý đơn hàng</a></li>
    <li><a href="index.php?action=quanlyweb&query=capnhat">Quản lý website</a></li>
</ul> -->
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #4eabb5;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php"><img  width="50px" src="imagesadm/logo.png"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <ul class="list_admincp">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Trang chính</a>
        </li>

        <li class="nav-item"><a class="nav-link" href="index.php?action=quanlydanhmucsanpham&query=them">Quản lý danh mục sản phẩm</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php?action=quanlysanpham&query=them">Quản lý sản phẩm</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php?action=quanlydanhmucbaiviet&query=them">Quản lý danh mục bài viết</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php?action=quanlybaiviet&query=them">Quản lý bài viết</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php?action=quanlydonhang&query=lietke">Quản lý đơn hàng</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php?action=quanlyweb&query=capnhat">Quản lý website</a></li>
        <?php 
            if(isset($_SESSION['dangnhap'])){
        ?>
        <li class="nav-item dropdown">
          
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user"></i>
            <?php echo $_SESSION['dangnhap']?>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="index.php?dangxuat=1"> Đăng xuất</a></li>
            <li><a class="dropdown-item" href="../index.php"> Đến trang web</a></li>
        </ul>
        </li>
        <?php
            }
        ?>
      </ul>
      </ul>
    </div>
  </div>
</nav>