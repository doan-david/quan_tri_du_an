<?php
    if(isset($_POST['dangnhap'])){
        $email=$_POST['email'];
        $matkhau=md5($_POST['password']);
        $sql="SELECT * FROM tbl_dangky WHERE email='".$email."' AND matkhau='".$matkhau."' LIMIT 1";
        $row=mysqli_query($mysqli,$sql);
        $count=mysqli_num_rows($row);
        
        if($count>0){
            $row_data=mysqli_fetch_array($row);
            $_SESSION['dangky']= $row_data['tenkhachhang'];
            $_SESSION['email']=$row_data['email'];
            $_SESSION['id_khachhang']= $row_data['id_dangky'];
            if(isset($_SESSION['dangky'])){
                echo 'Xin chào: '.'<span style="color:green">'.$_SESSION['dangky'].'</span>'.' '.' đã đăng nhập thành công';
                echo $_SESSION['id_khachhang'];
            }
            header("Location:index.php?quanly=giohang");
        }else{
            echo '<p style="color:green;">tài khoản hoặc mật khẩu không chính xác, vui lòng nhập lại;</p>';
        }
    }
?>
<form action="" method="POST" autocomplete="off">
            
        
    <table border="1" width="50%" class="" style="text-align: center;border-collapse: collapse;">
        <tr>
            <td colspan="2"><h3>Đăng nhập khách hàng</h3></td>
        </tr>
        <tr>
            <td>Tài khoản</td>
            <td><input type="text" size="50" name="email" value="" placeholder="email..."></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="password" size="50" name="password" value="" placeholder="mật khẩu..."></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="dangnhap" value="Đăng nhập"></td>
            
        </tr>
    </table>
</form>