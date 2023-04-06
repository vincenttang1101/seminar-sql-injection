<p>Quản lý thông tin website</p>
<?php
	$sql_lh = "SELECT * FROM tbl_lienhe WHERE id=1";
	$query_lh = mysqli_query($mysqli,$sql_lh);
?>
<table border="1" width="100%" style="border-collapse: collapse;">
	<?php
	 	while($dong = mysqli_fetch_array($query_lh)) {
	 	?>
 <form method="POST" action="modules/thongtinweb/xuly.php?id=<?php echo $dong['id'] ?>" enctype="multipart/form-data">
	  
	   <tr>
	  	<td>Thông tin liên hệ</td>
	  	<td><textarea rows="10"  name="thongtinlienhe" style="resize: none"><?php echo $dong['thongtinlienhe'] ?></textarea></td>
	  </tr>
	  
	   <tr>
	    <td colspan="2"><input type="submit" name="submitlienhe" value="Cập nhật"></td>
	  </tr>
	  <?php 
		}
	  ?>
 </form>
</table>
