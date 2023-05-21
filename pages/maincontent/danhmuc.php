

            <h3>Danh mục sản phẩm:<?php echo $row_title['tendanhmuc']?></h3>
            <div class="row">
            <ul class="list_product">

                <div class="col-md-3">
                    <li>
                    <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>">
                    <img class="img img-responsive" width="100%" src="admincp/modules/qlsanpham/uploads/<?php echo $row['hinhanh']?>">
                    <p class="title_product">Tên sản phẩm: <?php echo $row['tensanpham']?></p>
                    <p class="price_product">Giá: <?php echo $row['giasp'].' '.'vnđ'?></p>
                    </a>
                    </li>
                </div>

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

            <p>trang hiện tại:<?php echo $page?>/<?php echo ceil($row_count/4) ?></p>
            <ul class="list_trang">

                <li <?php if($i==$page){echo 'style="background: aqua"';} ?> >
                    <a href="index.php?quanly=danhmucsanpham&id=<?php echo $_GET['id']?>&trang=<?php echo $i?>"><?php echo $i ?></a>
                </li>

            
            </ul>
            </div>
            </div>