
<div class="sidebar">
    <h5>Danh mục sản phẩm</h5>
    <ul class="list_sidebar">
    
        <li style="text-transform:uppercase"><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row['id_danhmuc']?>"><?php echo $row['tendanhmuc']?></a></li>
    
    </ul>
    <h5>Danh mục bài viết</h5>
    <ul class="list_sidebar">

        <li style="text-transform:uppercase"><a href="index.php?quanly=danhmucbaiviet&id=<?php echo $row['id_danhmucbaiviet']?>"><?php echo $row['tendanhmuc_baiviet']?></a></li>

    </ul>
</div>