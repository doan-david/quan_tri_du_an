

<!-- menu -->

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
           
            <li><a class="dropdown-item" href="index.php?quanly=danhmucsanpham&id="></a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Danh mục bài viết
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
           
            <li><a class="dropdown-item" href="index.php?quanly=danhmucbaiviet&id=</a></li>
            
          </ul>
        </li>

        
        <li class="nav-item dropdown">
          
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user"></i>
            
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="index.php?dangxuat=1"> Đăng xuất</a></li>
            <li><a class="dropdown-item" href="index.php?quanly=thaydoimatkhau"> Đổi mật khẩu</a></li>
            <li><a class="dropdown-item" href="index.php?quanly=lichsudonhang"> Lịch sử đơn hàng</a></li>
        </ul>
        </li>
       
        <li class="nav-item"><a class="nav-link" href="index.php?quanly=dangky"> Đăng ký</a></li>
        <li class="nav-item dropdown">
          
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Đăng nhập
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
          <li ><a class="dropdown-item" href="index.php?quanly=dangnhap"> User</a></li>
        <li ><a class="dropdown-item" href="admincp/login.php">Admin</a></li>
        </ul>
        </li>
       
        

      </ul>
      <form class="d-flex" action="index.php?quanly=timkiem" method="POST">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="tukhoa">
        <button class="btn btn-outline-success" type="submit" name="timkiem" style="background:#e3f2fd;">Search</button>
      </form>
    </div>
  </div>
</nav>

