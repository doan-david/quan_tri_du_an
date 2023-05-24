<h3 style="text-align: center;text-transform:uppercase;">Tin tức mới</h3>
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
    $sql_bv="SELECT * FROM tbl_baiviet WHERE tinhtrang=1 ORDER BY tbl_baiviet.id_baiviet ASC LIMIT $begin,4";
    $query_bv=mysqli_query($mysqli,$sql_bv);
    
?>
<div class="row">
            <ul class="list_baiviet">
                <?php
                while($row_bv=mysqli_fetch_array($query_bv)){
                ?>
                <div class="col-md-3 col-sm-12 col-xs-12">
                <li>
                    <a href="index.php?quanly=baiviet&id=<?php echo $row_bv['id_baiviet']?>">
                    <img src="admincp/modules/qlbaiviet/uploads/<?php echo $row_bv['hinhanh']?>">
                    <p style="word-wrap: break-word;" class="title_product">Tên bài viết: <?php echo $row_bv['tenbaiviet']?></p>
                    </a>
                    <p class="title_product">Tóm tắt:<?php echo $row_bv['tomtat']?></p>
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
                
                $sql_trang=mysqli_query($mysqli,"SELECT * FROM tbl_baiviet");
                $row_count=mysqli_num_rows($sql_trang);
                $trang= ceil($row_count/4);

            ?>
            <p>trang hiện tại:<?php echo $page?>/<?php echo ceil($row_count/4) ?></p>
            <ul class="list_trang">
                <?php
                    for($i=1;$i<=$trang;$i++){
                ?>
                <li <?php if($i==$page){echo 'style="background: aqua"';} ?> >
                    <a href="index.php?quanly=tintuc&trang=<?php echo $i?>"><?php echo $i ?></a>
                </li>
                <?php 
                    }
                ?>
            
            </ul>
</div>
            