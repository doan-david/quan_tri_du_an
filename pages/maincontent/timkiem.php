
<?php 
    if(isset($_POST['tukhoa'])){
        $tukhoa = $_POST['tukhoa'];
    }
    else{
        $tukhoa = '';
    }
    $sql_pro="SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc AND tbl_sanpham.tensanpham LIKE '%".$tukhoa."%'";
    $query_pro=mysqli_query($mysqli,$sql_pro);

?>
<h3>Từ khóa tìm kiếm:<?php echo $_POST['tukhoa']?></h3>
<ul class="list_product">
<?Php
    while($row=mysqli_fetch_array($query_pro)){
?>
    <li>
        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>">
        <img src="admincp/modules/qlsanpham/uploads/<?php echo $row['hinhanh']?>">
        <p class="title_product">Tên sản phẩm: <?php echo $row['tensanpham']?></p>
        <p class="price_product">Giá: <?php echo $row['giasp'].' '.'vnđ'?></p>
        <p class="cate_product">Danh mục: <?php echo $row['tendanhmuc']?></p>
        </a>
    </li>
    <?php
    }
    ?>
</ul>
