<?php
	$sql_bv = "SELECT * FROM tbl_baiviet WHERE tbl_baiviet.id_danhmuc='$_GET[id]' ORDER BY id DESC";
	$query_bv = mysqli_query($mysqli,$sql_bv);
	//get ten danh muc
	$sql_cate = "SELECT * FROM tbl_danhmucbaiviet WHERE tbl_danhmucbaiviet.id_baiviet='$_GET[id]' LIMIT 1";
	$query_cate = mysqli_query($mysqli,$sql_cate);
	$row_title = mysqli_fetch_array($query_cate);
?>
<h3>Danh mục bài viết: <span style="text-align: center;text-transform: uppercase;"><?php echo $row_title['tendanhmuc_baiviet'] ?></span></h3>

			<div class="row">
					<?php
					while($row_bv = mysqli_fetch_array($query_bv)){ 
					?>
					<div class="col-md-3 col-sm-6">
						<a href="index.php?quanly=baiviet&id=<?php echo $row_bv['id'] ?>">
							<img class="img img-responsive" width="100%" src="admincp/modules/quanlybaiviet/uploads/<?php echo $row_bv['hinhanh'] ?>">
							<p class="title_product">Tên bài viết : <?php echo $row_bv['tenbaiviet'] ?></p>

							
						</a>
						<p style="margin:10px" class="title_product"><?php echo $row_bv['tomtat'] ?></p>
					</div>
					<?php
					} 
					?>
					
				</div>