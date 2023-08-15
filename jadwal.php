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
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: black;
    color: white;
    text-align: center;
}
</style>    
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
			<h2><center>Jadwal Ujian</center></h2>
			<table class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>No.</th>
						<th>Tanggal</th>
						<th>Kelas</th>
						<th>Tempat</th>
						<th>Sesi Ujian</th>
						<th>Waktu Mulai</th>
						<th>Durasi Ujian</th>
						<th>Mata Pelajaran</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no=1;
					$cari = mysql_query("SELECT DISTINCT(u.XTglUjian), u.XKodeKelas, s.XRuang, u.XSesi, u.XJamUjian, u.XLamaUjian, m.XNamaMapel FROM cbt_ujian u, cbt_siswa s, cbt_mapel m, cbt_kelas k WHERE k.XKodeKelas=u.XKodeKelas AND m.XKodeMapel=u.XKodeMapel AND k.XKodeKelas=s.XKodeKelas AND s.XNomerUjian='$txtuser'") or die("e-Resource query error!");
					while($data=mysql_fetch_array($cari)){?>
					<tr>
						<form class="form-signin" action="" method="POST">
						<td width="50px"><?php echo $no; $no++;?></td>
						<td><input hidden type='text' value='<?php echo $data[0];?>'><?php 
						$timestamp = strtotime($data[0]); 
						$new_date = date('d - F - Y', $timestamp);
						echo $new_date;
						?></input></td>
						<td><input hidden type='text' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
						<td><input hidden type='text' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
						<td><input hidden type='text' value='<?php echo $data[3];?>'><?php echo $data[3];?></input></td>
						<td><input hidden type='text' value='<?php echo $data[4];?>'><?php echo $data[4];?></input></td>
						<td><input hidden type='text' value='<?php echo $data[5];?>'><?php echo $data[5];?></input></td>
						<td><input hidden type='text' value='<?php echo $data[6];?>'><?php echo $data[6];?></input></td>
					</form>
					</tr>
					<?php	
					}
					?>
				</tbody>
			</table><br>
			<h2><center>Backup Jadwal Ujian</center></h2>
			<table class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>No.</th>
						<th>Keterangan</th>
						<th>Tanggal Upload</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no=1;
					$cari = mysql_query("SELECT * FROM cbt_upload_file WHERE XFolder = 'jadwal-tes' ORDER BY urut DESC") or die("e-Resource query error!");
					while($data=mysql_fetch_array($cari)){?>
					<tr>
						<form class="form-signin" action="" method="POST">
						<td width="50px"><?php echo $no; $no++;?></td>
						<td><input hidden type='text' name='nb' value='<?php echo $data['XCreated'];?>'><?php echo $data['XKeterangan'];?></input></td>
						<td><input hidden type='text' name='nb' value='<?php echo $data['XCreated'];?>'><?php
						$timestamp = strtotime($data['XCreated']); 
						$new_date = date('d - F - Y', $timestamp);
						echo $new_date;?></input></td>
						<td><p><a href="<?php echo 'panel/pages/jadwal-tes/'.$data['XNamaFile'];?>" target="_blank">Download</a></p></td>
					</form>
					</tr>
					<?php	
					}
					?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="footer" style=" font-size:14px">
	<p><?php echo strtoupper("$r[XSekolah]"); ?></p>
</div>

<script src="js/jquery.cookie.js"></script>
<script src="js/common.js"></script>
<script src="js/main.js"></script>
<script src="js/cookieList.js"></script>
<script src="js/backend.js"></script>

    
