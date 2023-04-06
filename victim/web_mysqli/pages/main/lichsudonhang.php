<h3>Lịch sử đơn hàng</h3>
<?php
	$id_khachhang = $_SESSION['id_khachhang'];
	$sql_lietke_dh = "SELECT * FROM tbl_cart,tbl_dangky WHERE tbl_cart.id_khachhang=tbl_dangky.id_dangky AND tbl_cart.id_khachhang='$id_khachhang' ORDER BY tbl_cart.id_cart DESC";
	$query_lietke_dh = mysqli_query($mysqli,$sql_lietke_dh);
?>
<table style="width:100%" border="1" style="border-collapse: collapse;">
  <tr>
  	<th>Id</th>
    <th>Mã đơn hàng</th>
    <th>Tên khách hàng</th>
    <th>Địa chỉ</th>
    <th>Email</th>
    <th>Số điện thoại</th>
    <th>Tình trạng</th>
    <th>Ngày đặt</th>
  	<th>Quản lý</th>
    <th>In</th>
  	<th>Hình thức thanh toán</th>
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_dh)){
  	$i++;
  ?>
  <tr>
  	<td><?php echo $i ?></td>
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tenkhachhang'] ?></td>
    <td><?php echo $row['diachi'] ?></td>
    <td><?php echo $row['email'] ?></td>
    <td><?php echo $row['dienthoai'] ?></td>

    <td>
    	<?php if($row['cart_status']==1){
    		echo '<a href="modules/quanlydonhang/xuly.php?code='.$row['code_cart'].'">Đơn hàng mới</a>';
    	}else{
    		echo 'Đã xem';
    	}
    	?>
    </td>
    <td><?php echo $row['cart_date'] ?></td>
   	<td>
   		<a href="index.php?quanly=xemdonhang&code=<?php echo $row['code_cart'] ?>">Xem đơn hàng</a> 
   	</td>
    <td>
      <a href="main/indonhang.php?code=<?php echo $row['code_cart'] ?>">In Đơn hàng</a> 
    </td>
   	<td>
   		<?php 
   		if($row['cart_payment']=='vnpay' || $row['cart_payment']=='momo'){
   		?>
   		<a href="index.php?quanly=lichsudonhang&congthanhtoan=<?php echo $row['cart_payment'] ?>&code_cart=<?php echo $row['code_cart'] ?>"><?php echo $row['cart_payment'] ?></a>	
   		<?php
   		}else{ 
   		?>
   		<?php echo $row['cart_payment'] ?>
   		<?php
   		} 
   		?>
   		</td>
  </tr>
  <?php
  } 
  ?>
 
</table>
<?php
if(isset($_GET['congthanhtoan'])){
	$congthanhtoan = $_GET['congthanhtoan'];
	$code_cart = $_GET['code_cart'];
	echo '<h4>Chi tiết thanh toán qua cổng thanh toán : '.$congthanhtoan.'</h4>';
	if($congthanhtoan=='momo'){
		$sql_momo = mysqli_query($mysqli,"SELECT * FROM tbl_momo WHERE code_cart='$code_cart' LIMIT 1");
		$row_momo = mysqli_fetch_array($sql_momo);
	?>

	<table class="table table-striped">
    <thead>
      <tr>
        <th>Partner_code</th>
        <th>Order_id</th>
        <th>Amount</th>
        <th>Order_info</th>
        <th>Order_Type</th>
        <th>Trans_id</th>
        <th>Pay_type</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><?php echo $row_momo['partner_code'] ?></td>
        <td><?php echo $row_momo['order_id'] ?></td>
        <td><?php echo $row_momo['amount'] ?></td>
        <td><?php echo $row_momo['order_info'] ?></td>
        <td><?php echo $row_momo['order_type'] ?></td>
        <td><?php echo $row_momo['trans_id'] ?></td>
        <td><?php echo $row_momo['pay_type'] ?></td>
      </tr>
     
    </tbody>
  	</table>
	<?php
	}elseif($congthanhtoan=='vnpay'){ 
		$sql_vnpay = mysqli_query($mysqli,"SELECT * FROM tbl_vnpay WHERE code_cart='$code_cart' LIMIT 1");
		$row_vnpay = mysqli_fetch_array($sql_vnpay);
	?>
	<table class="table table-striped">
    <thead>
      <tr>
        <th>vnp_amount</th>
        <th>vnp_bankcode</th>
        <th>vnp_banktranno</th>
        <th>vnp_orderinfo</th>
        <th>vnp_paydate</th>
        <th>vnp_tmncode</th>
        <th>vnp_transactionno</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><?php echo $row_vnpay['vnp_amount'] ?></td>
        <td><?php echo $row_vnpay['vnp_bankCode'] ?></td>
        <td><?php echo $row_vnpay['vnp_banktranno'] ?></td>
        <td><?php echo $row_vnpay['vnp_orderinfo'] ?></td>
        <td><?php echo $row_vnpay['vnp_paydate'] ?></td>
        <td><?php echo $row_vnpay['vnp_tmncode'] ?></td>
        <td><?php echo $row_vnpay['vnp_transactionno'] ?></td>
      </tr>
     
    </tbody>
  	</table>

<?php
	}
} 
?>