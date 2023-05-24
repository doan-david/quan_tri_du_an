
<?php 
    if(isset($_GET['trang'])){
        $page=$_GET['trang'];
    }else{
        $page='';
    }
    if($page==''||$page==1){
        $begin=0;
    }else{
        $begin=($page*4)-4;
    }
    
    $sql_pro="SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc LIMIT $begin,4";
    $query_pro=mysqli_query($mysqli,$sql_pro);
    if(isset($_POST['tukhoa'])){
        $tukhoa = $_POST['tukhoa'];
        $sql_pro="SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc AND tbl_sanpham.tensanpham LIKE '%".$tukhoa."%'";
        $query_pro=mysqli_query($mysqli,$sql_pro);
        echo'<h5>Từ khóa tìm kiếm:'.$_POST['tukhoa'].' </h5> ';
    }
    else{
        $tukhoa = '';
    }
    

?>
<!-- <h3>Từ khóa tìm kiếm:<?php echo $_POST['tukhoa']?></h3> -->
<div class="row">
<ul class="list_product">
<?Php
    while($row=mysqli_fetch_array($query_pro)){
?>
    <div class="col-md-3">
    <li>
        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>">
        <img src="admincp/modules/qlsanpham/uploads/<?php echo $row['hinhanh']?>">
        <p class="title_product">Tên sản phẩm: <?php echo $row['tensanpham']?></p>
        <p class="price_product">Giá: <?php echo $row['giasp'].' '.'vnđ'?></p>
        <p class="cate_product">Danh mục: <?php echo $row['tendanhmuc']?></p>
        </a>
    </li>
    </div>
    <?php
    }
    ?>
</ul>
<div style="clear:both"></div>
            <style type="text/css">
                ul.list_trang {
                    margin: 0;
                    padding: 0;
                    list-style: none;
                }
                ul.list_trang li {
                    float: left;
                    padding: 5px 13px;
                    margin: 5px;
                    background: burlywood;
                    display: block;
                }
                ul.list_trang li a{
                    color: black;
                    text-align: center;
                    text-decoration: none;
                }
            </style>
            <?php
                
                $sql_trang=mysqli_query($mysqli,"SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc ");
                $row_count=mysqli_num_rows($sql_trang);
                $trang= ceil($row_count/4);

            ?>
            <p>trang hiện tại:<?php echo $page?>/<?php echo ceil($row_count/4) ?></p>
            <ul class="list_trang">
                <?php
                    for($i=1;$i<=$trang;$i++){
                ?>
                <li <?php if($i==$page){echo 'style="background: aqua"';} ?> >
                    <a href="index.php?quanly=timkiem&trang=<?php echo $i?>"><?php echo $i ?></a>
                </li>
                <?php 
                    }
                ?>
            
            </ul>
</div>
