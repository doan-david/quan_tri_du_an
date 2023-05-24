<h1> Chi tiết sản phẩm</h1>

<div class="wrapper_chitiet">

<div class="hinhanh_sanpham">
    <img width="100%" src="admincp/modules/qlsanpham/uploads/">
</div>

<form method="POST" action="pages/maincontent/themgiohang.php?idsanpham=">
<div class="chitiet_sanpham">
    <h3 style="margin:0;">Tên sản phẩm: </h3>
    <p>Mã sản phẩm: </p>
    <p>Giá sản phẩm: </p>
    <p>Số lượng: </p>
    <p>Danh mục: </p>
    <p><input class="themgiohang" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
</div>
</form>

</div>
<div class="clear">
    <div class="tabs_sp">
    <h3 style="margin: 20px; padding-top: 20px;">Thông tin chi tiết sản phẩm</h3>
    <div class="title_ctsp"><h5 >Tóm tắt</h5><br>
</div>
    <div class="title_ctsp"><h5>Nội dung</h5><br>
    <?php echo $row_chitiet['noidung']?></div>
    </div>
</div>
