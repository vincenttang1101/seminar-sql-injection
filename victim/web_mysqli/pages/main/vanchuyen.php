<p>Thông tin vận chuyển</p>

<div class="container">
  <?php
  if(isset($_SESSION['id_khachhang'])){
  ?>
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step done"> <span> <a href="index.php?quanly=giohang" >Giỏ hàng</a></span> </div>
    <div class="step current"> <span><a href="index.php?quanly=vanchuyen" >Vận chuyển</a></span> </div>
    <div class="step"> <span><a href="index.php?quanly=thongtinthanhtoan" >Thanh toán</a><span> </div>
    <div class="step"> <span><a href="index.php?quanly=donhangdadat" >Lịch sử đơn hàng</a><span> </div>
  </div>
  <?php
  } 
  ?>
 <h4>Thông tin vận chuyển</h4>
 <?php
 	if(isset($_POST['themvanchuyen'])) {
 		$name = $_POST['name'];
 		$phone = $_POST['phone'];
 		$address = $_POST['address'];
 		$note = $_POST['note'];
 		$id_dangky = $_SESSION['id_khachhang'];
 		$sql_them_vanchuyen = mysqli_query($mysqli,"INSERT INTO tbl_shipping(name,phone,address,note,id_dangky) VALUES('$name','$phone','$address','$note','$id_dangky')");
 		if($sql_them_vanchuyen){
 			echo '<script>alert("Thêm vận chuyển thành công")</script>';

 		}
 	}elseif(isset($_POST['capnhatvanchuyen'])){
 		$name = $_POST['name'];
 		$phone = $_POST['phone'];
 		$address = $_POST['address'];
 		$note = $_POST['note'];
 		$id_dangky = $_SESSION['id_khachhang'];
 		$sql_update_vanchuyen = mysqli_query($mysqli,"UPDATE tbl_shipping SET name='$name',phone='$phone',address='$address',note='$note',id_dangky='$id_dangky' WHERE id_dangky='$id_dangky'");
 		if($sql_update_vanchuyen){
 			echo '<script>alert("Cập nhật vận chuyển thành công")</script>';

 		}
 	}
 ?>
 <div class="row">
 	<?php
 	$id_dangky = $_SESSION['id_khachhang'];
 	$sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_dangky' LIMIT 1");
 	$count = mysqli_num_rows($sql_get_vanchuyen);
 	if($count>0){
 		$row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
 		$name = $row_get_vanchuyen['name'];
 		$phone = $row_get_vanchuyen['phone'];
 		$address = $row_get_vanchuyen['address'];
 		$note = $row_get_vanchuyen['note'];
 	}else{

 		$name = '';
 		$phone = '';
 		$address = '';
 		$note = '';
 	}
 	?>
 	<div class="col-md-12">
	 <form action="" autocomplete="off" method="POST">
	  <div class="form-group">
	    <label for="email">Họ và tên</label>
	    <input type="text" name="name" class="form-control" value="<?php echo $name ?>" placeholder="..." >
	  </div>
		<div class="form-group">
	    <label for="email">Phone</label>
	    <input type="text" name="phone" class="form-control" value="<?php echo $phone ?>"  placeholder="...">
	  </div>
	  <div class="form-group">
	    <label for="email">Địa chỉ</label>
	    <input type="text" name="address" class="form-control" value="<?php echo $address ?>"  placeholder="...">
	  </div>
	  <div class="form-group">
	    <label for="email">Ghi chú</label>
	    <input type="text" name="note" class="form-control" value="<?php echo $note ?>"  placeholder="..." >
	  </div>
	  <?php
	  if($name=='' && $phone=='') {
	  ?>
	  <button type="submit" name="themvanchuyen" class="btn btn-primary">Thêm vận chuyển</button>
	  <?php
	  } elseif($name!='' && $phone!=''){
	  ?>
	  <button type="submit" name="capnhatvanchuyen" class="btn btn-success">Cập nhật vận chuyển</button>
	  <?php
	  } 
	  ?>
	</form>
	</div>

	<!--------Giỏ hàng------------------>
	<table style="width:100%;text-align: center;border-collapse: collapse;" border="1">
  <tr>
    <th>Id</th>
    <th>Mã sp</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Giá sản phẩm</th>
    <th>Thành tiền</th>
  
   
  </tr>
  <?php
  if(isset($_SESSION['cart'])){
  	$i = 0;
  	$tongtien = 0;
  	foreach($_SESSION['cart'] as $cart_item){
  		$thanhtien = $cart_item['soluong']*$cart_item['giasp'];
  		$tongtien+=$thanhtien;
  		$i++;
  ?>
  <tr>
    <td><?php echo $i; ?></td>
    <td><?php echo $cart_item['masp']; ?></td>
    <td><?php echo $cart_item['tensanpham']; ?></td>
    <td><img src="admincp/modules/quanlysp/uploads/<?php echo $cart_item['hinhanh']; ?>" width="150px"></td>
    <td>
    	<a href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fa fa-plus fa-style" aria-hidden="true"></i></a>
    	<?php echo $cart_item['soluong']; ?>
    	<a href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fa fa-minus fa-style" aria-hidden="true"></i></a>

    </td>
    <td><?php echo number_format($cart_item['giasp'],0,',','.').'vnđ'; ?></td>
    <td><?php echo number_format($thanhtien,0,',','.').'vnđ' ?></td>
    
  </tr>
  <?php
  	}
  ?>
   <tr>
    <td colspan="8">
    	<p style="float: left;">Tổng tiền: <?php echo number_format($tongtien,0,',','.').'vnđ' ?></p><br/>
    	
      <div style="clear: both;"></div>
      <?php
        if(isset($_SESSION['dangky'])){
          ?>
           <p><a href="index.php?quanly=thongtinthanhtoan">Hình thức thanh toán</a></p>
      <?php
        }else{
      ?>
        <p><a href="index.php?quanly=dangky">Đăng kí đặt hàng</a></p>
      <?php
        }
      ?>
      
     


    </td>

   
  </tr>
  <?php	
  }else{ 
  ?>
   <tr>
    <td colspan="8"><p>Hiện tại giỏ hàng trống</p></td>
   
  </tr>
  <?php
  } 
  ?>
 
</table>
</div>
</div>
