<?php
	
    require('../../../carbon/autoload.php');
	include('../../config/config.php');
	use Carbon\Carbon;
    use Carbon\CarbonInterval;
    $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
	if(isset($_GET['code'])){
		$code_cart = $_GET['code'];
		$sql_update ="UPDATE tbl_cart SET cart_status=0 WHERE code_cart='".$code_cart."'";
		$query = mysqli_query($mysqli,$sql_update);

		//thong ke doanh thu
        $sql_lietke_dh = "SELECT * FROM tbl_cart_details,tbl_sanpham WHERE tbl_cart_details.id_sanpham=tbl_sanpham.id_sanpham AND tbl_cart_details.code_cart='$code_cart' ORDER BY tbl_cart_details.id_cart_details DESC";
        $query_lietke_dh = mysqli_query($mysqli,$sql_lietke_dh);

        $sql_thongke = "SELECT * FROM tbl_thongke WHERE ngaydat='$now'"; 
        $query_thongke = mysqli_query($mysqli,$sql_thongke);

        $soluongmua = 0;
        $doanhthu = 0;
        while($row = mysqli_fetch_array($query_lietke_dh)){
              $soluongmua+=$row['soluongmua'];
              $doanhthu+=$row['giasp'];
        }

        if(mysqli_num_rows($query_thongke)==0){
                $soluongban = $soluongmua;
                $doanhthu = $doanhthu;
                $donhang = 1;
                $sql_update_thongke = mysqli_query($mysqli,"INSERT INTO tbl_thongke (ngaydat,soluongban,doanhthu,donhang) VALUE('$now','$soluongban','$doanhthu','$donhang')" );
        }elseif(mysqli_num_rows($query_thongke)!=0){
            while($row_tk = mysqli_fetch_array($query_thongke)){
                $soluongban = $row_tk['soluongban']+$soluongban;
                $doanhthu = $row_tk['doanhthu']+$doanhthu;
                $donhang = $row_tk['donhang']+1;
                $sql_update_thongke = mysqli_query($mysqli,"UPDATE tbl_thongke SET soluongban='$soluongban',doanhthu='$doanhthu',donhang='$donhang' WHERE ngaydat='$now'" );
            }
        }
    

		header('Location:../../index.php?action=quanlydonhang&query=lietke');
	} 
?>