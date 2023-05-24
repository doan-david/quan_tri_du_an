<!-- main -->
<div class="main">
    <div class="clear"></div>
    <div class="row">
            <!-- large , middle, small, x-small -->
        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
            <?php
            include('sidebar/sidebar.php');
            ?>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
            <div class="maincontent">
                <?php
                if(isset($_GET['quanly'])){
                    $tam=$_GET['quanly'];
                }else{
                    $tam='';
                }
                if($tam=='danhmucsanpham'){
                    include('maincontent/danhmuc.php');
                }elseif($tam=='giohang'){
                    include('maincontent/giohang.php');
                }elseif($tam=='danhmucbaiviet'){
                    include('maincontent/danhmucbaiviet.php');
                }elseif($tam=='baiviet'){
                    include('maincontent/baiviet.php');
                }elseif($tam=='tintuc'){
                    include('maincontent/tintuc.php');
                }elseif($tam=='lienhe'){
                    include('maincontent/lienhe.php');
                }elseif($tam=='sanpham'){
                    include('maincontent/sanpham.php');
                }elseif($tam=='dangky'){
                    include('maincontent/dangky.php');
                }elseif($tam=='thanhtoan'){
                    include('maincontent/thanhtoan.php');
                }elseif($tam=='dangnhap'){
                    include('maincontent/dangnhap.php');
                }elseif($tam=='timkiem'){
                    include('maincontent/timkiem.php');
                }elseif($tam=='camon'){
                    include('maincontent/camon.php');
                }elseif($tam=='thaydoimatkhau'){
                    include('maincontent/thaydoimatkhau.php');
                }elseif($tam=='vanchuyen'){
                    include('maincontent/vanchuyen.php');
                }elseif($tam=='thongtinthanhtoan'){
                    include('maincontent/thongtinthanhtoan.php');
                }elseif($tam=='donhangdadat'){
                    include('maincontent/donhangdadat.php');
                }elseif($tam=='thanhtoanngay'){
                    include('maincontent/xulythanhtoan.php');
                }elseif($tam=='lichsudonhang'){
                    include('maincontent/lichsudonhang.php');
                }elseif($tam=='xemdonhang'){
                    include('maincontent/xemdonhang.php');
                    
                }else{
                    include('maincontent/indexcontent.php');
                }
                ?>
            </div>
        </div>
    </div>
</div>