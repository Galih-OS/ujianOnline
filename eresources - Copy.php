<?php include "config/server.php";

include "ip.php";
 
$sqlcekdb = mysql_query("SELECT * FROM `cbt_siswa` limit 1");
if (!$sqlcekdb){
header('Location:login.php?salah=2');}
 
 if(isset($_COOKIE['PESERTA'])&&isset($_COOKIE['KUNCI'])){
 $user = "$_COOKIE[PESERTA]";
 $pass = "$_COOKIE[KUNCI]";
 $txtuser = $user;
 $txtpass = $pass;
 } else {	 
 //$user = "$_REQUEST[UserName]";
 $txtuser = str_replace(" ","",$_REQUEST['UserName']);
 $txtpass = str_replace(" ","",$_REQUEST['Password']);
 setcookie('PESERTA',$txtuser);
 setcookie('KUNCI',$txtpass);
 $user = "$txtuser";
 $pass = "$txtpass";

 }
 
 
// echo "SELECT * FROM  `cbt_siswa` WHERE XNomerUjian = '$txtuser' and XPassword = '$txtpass' $_COOKIE[PESERTA] | $_COOKIE[KUNCI]";
 
 $sqllogin = mysql_query("SELECT * FROM  `cbt_siswa` WHERE XNomerUjian = '$txtuser' and XPassword = '$txtpass'");
 $sis = mysql_fetch_array($sqllogin);
 
  
  $val_siswa = $sis['XNamaSiswa'];
  $xjeniskelamin= $sis['XJenisKelamin']; 
  $xkelz = $sis['XKodeKelas'];
  $xjurz = $sis['XKodeJurusan']; 
  $xsesi = $sis['XSesi'];  

  if($xjeniskelamin=="L"){$jekel = "LAKI-LAKI";} else {$jekel = "PEREMPUAN";}
 //echo "SELECT * FROM  `cbt_siswa` WHERE XNomerUjian = '$txtuser' and XPassword = '$txtpass'";
 $jmlsqllogin = mysql_num_rows($sqllogin);
 	if($jmlsqllogin<1){ 
	header('Location:login.php?salah=1&jumlah='.$jmlsqllogin);
 }
 
 $tglujian = date("Y-m-d");
 $xjam1 = date("H:i:s");

 //  $user = $_COOKIE['PESERTA'];
//  setcookie('PESERTA',$user);


//jika ada ujian yang belum waktunya
$sqlcekujian = mysql_query("
SELECT FROM `cbt_ujian` where (XKodeKelas = '$xkelz' or XKodeKelas = 'ALL') and (XKodeJurusan = '$xjurz' or XKodeJurusan = 'ALL') and XTglUjian = '$tglujian' and XJamUjian <= '$xjam1' and XStatusUjian = '1'"); 


$sqluser = mysql_query("
SELECT u.*,m.XNamaMapel FROM `cbt_ujian` u LEFT JOIN cbt_paketsoal p on p.XKodeKelas = u.XKodeKelas and p.XKodeMapel = u.XKodeMapel
left join cbt_mapel m on u.XKodeMapel = m.XKodeMapel 
WHERE (u.XKodeKelas = '$xkelz' or u.XKodeKelas = 'ALL') and (u.XKodeJurusan = '$xjurz' or u.XKodeJurusan = 'ALL') and u.XTglUjian = '$tglujian' and u.XJamUjian <= '$xjam1'
and u.XStatusUjian = '1'");


  $s = mysql_fetch_array($sqluser);
  $xkodesoal = $s['XKodeSoal'];
  $xkodekelas = $s['XKodeKelas'];
  $xtglujian = $s['XTglUjian'];  
  $xkodemapel = $s['XKodeMapel'];
  $xjumlahsoal = $s['XJumSoal'];
  $xtokenujian = $s['XTokenUjian'];  
  $xlamaujian= $s['XLamaUjian'];
  $xjamujian= $s['XJamUjian'];    
  $xbatasmasuk= $s['XBatasMasuk'];   
  $xnamamapel = $s['XNamaMapel'];
    
 $sqlada0 = mysql_query("SELECT * FROM  `cbt_siswa_ujian` WHERE XNomerUjian = '$txtuser' and XTokenUjian = '$xtokenujian'");
 $ad0 = mysql_fetch_array($sqlada0);
 $user_ip2 = str_replace(" ","",$ad0['XGetIP']);
 $user_ip1 = $user_ip;
 //echo " $user_ip1 = $user_ip2 | $user_ip";
 if($user_ip1<>$user_ip2&&!$user_ip2==""){
 header('Location:login.php?salah=3');
 //echo " Beda";
 }
 
  
?>

<!DOCTYPE html>
<html class="no-js" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>e-Resource SMK IPIEMS Surabaya</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
    </script>
    
<style>
    .no-close .ui-dialog-titlebar-close {
        display: none;
    }
</style>
<style>
.left {
    float: left;
    width: 70%;
}
.right {
    float: right;
    width: 30%;
	background-color: #333333;
			height:101px;	
		color:#FFFFFF;	
		font-size: 13px; font-style:normal; font-weight:normal;
}
.user {
		color:#FFFFFF;	
		font-size: 15px; font-style:normal; font-weight:bold;
		top:-20px;
}
.log {
		color:#3799c2;	
		font-size: 11px; font-style:normal; font-weight:bold;
		top:-20px;
}
.group:after {
    content:"";
    display: table;
    clear: both;
	
}
/*
img {
    max-width: 100%;
    height: auto;
}
*/

.visible{
    display: block !important;
}

.hidden{
    display: none !important;
}
.foto{height:80px;}	
@media screen and (max-width: 780px) { /* jika screen maks. 780 right turun */
/*    .left, */
    .left,
    .right {
        float: none;
        width: auto;
		margin-top:0px;
		height:91px;
		color:#FFFFFF;
		display:block;	
    }
.foto{height:65px;}		
}
@media screen and (max-width: 400px) { /* jika screen maks. 780 right turun */
/*    .left, */
    .left{width: auto;    height: 91px;}
    .right {
        float: none;
        width: auto;
		margin-top:0px;
		height:60px;
		color:#FFFFFF;
    }
.foto{height:40px;}	
}
</style>
<link href="css/klien.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap2.min.css">

    <script src="js/inline.js"></script>
<?php 
include "config/server.php";
$sql = mysql_query("select * from cbt_admin");
$r = mysql_fetch_array($sql);
?>
<body class="font-medium" style="background-color:#c9c9c9">
<header style="background-color:<?php echo "$r[XWarna]"; ?>">
<div class="group">
    <div class="left" style="background-color:<?php echo "$r[XWarna]"; ?>"><a href="http://tuwagapat.com"><img src="images/<?php echo "$r[XBanner]"; ?>" style=" margin-left:0px;"></a>
    </div>
    	<div class="right"><table width="100%" border="0" cellspacing="5px;" style="margin-top:10px">   
     					<tr><td rowspan="3" width="100px" align="center"><img src="images/avatar.gif" style=" margin-left:0px; margin-top:5px" class="foto"></td>
						<td><span  style=" margin-left:0px; margin-top:5px">Selamat Datang</span></td></tr>
                        <tr><td><span class="user"><?php echo "$val_siswa ($xkodekelas)"; ?></span></td></tr>
                        <tr><td><span class="log"><a href="logout.php">Logout</a><span></td></tr>
						</table>
                        </div>
           
      	</div>
	</div> 
</div>         
</header>
	<ul>
  	<div id="myerror" class="alert alert-danger" role="alert" style="font-size: 13px; font-style:normal; font-weight:normal; margin-left:-45px; padding-left:90px;">
 <?php 
	if(isset($_REQUEST['salah'])){
		if($_REQUEST['salah']==1){echo "<b><ul><li>Kode TOKEN Tidak sesuai</li></ul></b>";}
	}
	?>
	</div></ul>
    
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<form action="eresources.php" method="GET" style="text-align: right">
				<label>Cari :</label>
				<input type="text" name="cari">
				<input type="submit" class="btn btn-default" value="Cari">
				<a href="eresources.php" class="btn btn-default">Reset</a>
			</form>
			<hr>
			<div class="row">
				<?php
				if(isset($_GET['cari'])){
				$cari = $_GET['cari'];
				$rs = mysql_query("SELECT DISTINCT(XNamaFile) as XNamaFile, XFolder, XKeterangan, XCreated FROM cbt_upload_file WHERE XKeterangan LIKE '%".$cari."%' AND XFolder != 'jadwal-tes'") or die("e-Resource query error!");
				}else{
				$page = (isset($_GET['page']))? $_GET['page'] : 1;
				$limit = 6;
				$limit_start = ($page - 1) * $limit;
				$rs = mysql_query("SELECT DISTINCT(XNamaFile) as XNamaFile, XFolder, XKeterangan, XCreated FROM cbt_upload_file WHERE XFolder != 'jadwal-tes' ORDER BY urut DESC LIMIT $limit_start, $limit") or die("e-Resource query error!");}
				while ($list = mysql_fetch_assoc($rs)) {
				?>
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail" style="height:325px;"><br>
						<img src="images/<?php echo $list['XFolder'].'.png';?>" style="height:100px; width:100px;" alt="">
						<div class="caption">
							<center><h3><?php echo ucwords($list['XFolder']); ?></h3>
							<p><?php echo $list['XKeterangan']; ?></p>
							<p><?php if($list['XFolder']=='audio'){?>
								<a href="<?php echo 'audio/'.$list['XNamaFile'];?>" target="_blank">Download</a> <?php
							}else if ($list['XFolder']=='document'){?>
								<a href="<?php echo 'document/'.$list['XNamaFile'];?>" target="_blank">Download</a> <?php
							}else if ($list['XFolder']=='video'){?>
							<a href="<?php echo 'video/'.$list['XNamaFile'];?>" target="_blank">Download</a> <?php 
							}else if ($list['XFolder']=='pictures'){?>
							<a href="<?php echo 'pictures/'.$list['XNamaFile'];?>" target="_blank">Download</a> 
							<?php }?>
							</p></center>
						</div>
					</div>
				</div>
				<?php
				}
				?>
			</div>
			<?php 
			if(!isset($_REQUEST['cari'])){
			?>
			<div class="col-md-6 col-md-offset-5">
				<div class="pagination">
					<?php
					if($page == 1){ // Jika page adalah page ke 1, maka disable link PREV
					?>
					  <li class="disabled"><a href="#">First</a></li>
					  <li class="disabled"><a href="#">&laquo;</a></li>
					<?php
					}else{ // Jika page bukan page ke 1
					  $link_prev = ($page > 1)? $page - 1 : 1;
					?>
					  <li><a href="eresources.php?page=1">First</a></li>
					  <li><a href="eresources.php?page=<?php echo $link_prev; ?>">&laquo;</a></li>
					<?php
					}
					?>
					
					<!-- LINK NUMBER -->
					<?php
					// Buat query untuk menghitung semua jumlah data
					$sql2 = mysql_query("SELECT COUNT(*) AS jumlah FROM cbt_upload_file");
					$get_jumlah = mysql_fetch_array($sql2);
					$jumlah_page = ceil($get_jumlah['jumlah'] / $limit); // Hitung jumlah halamannya
					$jumlah_number = 6; // Tentukan jumlah link number sebelum dan sesudah page yang aktif
					$start_number = ($page > $jumlah_number)? $page - $jumlah_number : 1; // Untuk awal link number
					$end_number = ($page < ($jumlah_page - $jumlah_number))? $page + $jumlah_number : $jumlah_page; // Untuk akhir link number
					
					for($i = $start_number; $i <= $end_number; $i++){
					  $link_active = ($page == $i)? ' class="active"' : '';
					?>
					  <li<?php echo $link_active; ?>><a href="eresources.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
					<?php
					}
					?>
					
					<!-- LINK NEXT AND LAST -->
					<?php
					// Jika page sama dengan jumlah page, maka disable link NEXT nya
					// Artinya page tersebut adalah page terakhir 
					if($page == $jumlah_page){ // Jika page terakhir
					?>
					  <li class="disabled"><a href="#">&raquo;</a></li>
					  <li class="disabled"><a href="#">Last</a></li>
					<?php
					}else{ // Jika Bukan page terakhir
					  $link_next = ($page < $jumlah_page)? $page + 1 : $jumlah_page;
					?>
					  <li><a href="eresources.php?page=<?php echo $link_next; ?>">&raquo;</a></li>
					  <li><a href="eresources.php?page=<?php echo $jumlah_page; ?>">Last</a></li>
					<?php
					}
					?>
				</div>
			</div>
			<?php 
			}
			?>
		</div>
	</div>
</div>

<footer>
    <div class="container" style=" font-size:12px">
        <p><?php echo strtoupper("$r[XSekolah]"); ?> | Supported by BEESMART</p>
    </div>
</footer>
    <script src="js/jquery.cookie.js"></script>
<script src="js/common.js"></script>
<script src="js/main.js"></script>
<script src="js/cookieList.js"></script>
<script src="js/backend.js"></script>

    
