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
  $nik = $sis['XNIK'];

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
        <title>Hasil Ujian SMK IPIEMS Surabaya</title>
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


$c = mysql_query("SELECT * FROM cbt_setid WHERE XStatus='1'");
$d = mysql_fetch_array($c);
$ta = $d[1];

$a = mysql_query("SELECT * FROM cbt_nilai WHERE XNomerUjian='$txtuser' AND XSetId='$ta'");
$b = mysql_fetch_array($a);
?>
<body class="font-medium" style="background-color:#cccccc">
<header style="background-color:<?php echo "$r[XWarna]"; ?>">
<div class="group">
    <div class="left" style="background-color:<?php echo "$r[XWarna]"; ?>"><a href="#"><img src="images/<?php echo "$r[XBanner]"; ?>" style=" margin-left:0px;"></a>
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
  	<div id="myerror" class="alert alert-danger" role="alert" style="font-size: 13px; font-style:normal; font-weight:normal; margin-left:-45px; padding-left:90px;"></div>
</ul>
<div class="container">
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-body">
				<ul class="nav nav-tabs" id="myTab">
					<li class="active"><a data-toggle="tab" href="#histori">Histori</a></li>
					<li><a data-toggle="tab" href="#hasil">Hasil Semester</a></li>
				</ul>
				<div class="tab-content"><br>
					<div id="histori" class="tab-pane fade in active">
						<center><h1>Tahun Ajaran <?php echo "$b[XSetId]"; ?><br>Semester 1 (Ganjil)</h1></center>
						<div class="col-md-6">
							<center><h2>Ujian Tengah Semester (UTS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>
						<div class="col-md-6">
							<center><h2>Ujian Akhir Semester (UAS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>	
					<hr>
					<center><h1>Semester 2 (Genap)</h1></center>
						<div class="col-md-6">
							<center><h2>Ujian Tengah Semester (UTS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>
						<div class="col-md-6">
							<center><h2>Ujian Akhir Semester (UAS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>
					</div>
					<div id="hasil" class="tab-pane fade">
						<form action="" method="GET">
							<select type="submit" name="semester" onchange="this.form.submit()">
								<option value="">-- Pilih Semester --</option>
								<?php
									$con = mysql_connect("localhost","root","");
									$db = mysql_select_db("beesmartv3",$con);
									$get = mysql_query("SELECT XKodeAY FROM cbt_setid");
									while($row = mysql_fetch_assoc($get))
									{?>
										<option value="<?php echo($row['XKodeAY'])?>">
											<?php echo($row['XKodeAY'])?>
										</option>
									<?php
									}?>
							</select>
						</form>
						<?php if(isset($_GET['semester'])) 
						{?>
						<center><h1>Tahun Ajaran <?php echo $_GET['semester']; ?><br>Semester 1 (Ganjil)</h1></center>
						<div class="col-md-6">
							<center><h2>Ujian Tengah Semester (UTS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>
						<div class="col-md-6">
							<center><h2>Ujian Akhir Semester (UAS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>	
					<hr>
					<center><h1>Semester 2 (Genap)</h1></center>
						<div class="col-md-6">
							<center><h2>Ujian Tengah Semester (UTS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>
						<div class="col-md-6">
							<center><h2>Ujian Akhir Semester (UAS)</h2></center>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Mata Pelajaran</th>
										<th>Nilai</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
									$hitung=mysql_num_rows($cari);
									if($hitung){
										while($data=mysql_fetch_array($cari)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
										<td width="40px"><?php echo $no; $no++;?></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
										<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
									</form>
									</tr>
									<?php	
									}
									}else{
										echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
									}
									?>
								</tbody>
							</table><br>
						</div>
						<?php
						}?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
    <script src="js/jquery.cookie.js"></script>
<script src="js/common.js"></script>
<script src="js/main.js"></script>
<script src="js/cookieList.js"></script>
<script src="js/backend.js"></script>
<script>
	$('#myTab a').click(function(e) {
		e.preventDefault();
		$(this).tab('show');
	});
	
	$("ul.nav-tabs > li > a").on("shown.bs.tab", function(e) {
		var id = $(e.target).attr("href").substr(1);
		window.location.hash = id;
	});
	
	var hash = window.location.hash;
	$('#myTab a[href="' + hash + '"]').tab('show');
</script>