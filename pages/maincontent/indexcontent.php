

    <h3>Sản phẩm mới</h3>
            <div class="row">
            <ul class="list_product">
            
                <div class="col-md-3">
                    <li>
                    <a href="index.php?quanly=sanpham&id=">
                    <img class="img img-responsive" width="100%" src="admincp/modules/qlsanpham/uploads/">
                    <p class="title_product">Tên sản phẩm: </p>
                    <p class="price_product">Giá: </p>
                    <p class="cate_product">Danh mục: </p>
                    </a>
                    </li>
                </div>
            
            </ul>
            </div>
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
            
            <p>trang hiện tại:/</p>
            <ul class="list_trang">
                
                <li  >
                    <a href="index.php?trang=<?php echo $i?>"><?php echo $i ?></a>
                </li>
                
            
            </ul>