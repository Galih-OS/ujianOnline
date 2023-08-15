			<?php
				if(isset($_POST['lihat']))
				{
				$tes=$_POST['tes3'];
				$sql = mysql_query("SELECT * FROM cbt_setid WHERE XStatus='1'");
				$setid = mysql_fetch_array($sql);
				$id = $setid['XKodeAY'];
				
				$per = mysql_query("SELECT * from cbt_mapel where XKodeMapel = '$_REQUEST[map3]'");
				$p = mysql_fetch_array($per);

				$perUTS = $p['XPersenUTS'];
				$perUAS = $p['XPersenUAS'];
				$NilaiKKM = $p['XKKM'];
				
				
				$sqlad = mysql_query("select * from cbt_admin");
				$ad = mysql_fetch_array($sqlad);
				$namsek = strtoupper($ad['XSekolah']);
				$kepsek = $ad['XKepSek'];
				$logsek = $ad['XLogo'];
				
				$uts = mysql_query("SELECT sum(XTotalNilai) as totUTS FROM cbt_nilai where XKodeKelas = '$_REQUEST[iki3]' and XNIK = '$nik' and XKodeUjian = 'UTS' and XKodeMapel = '$_REQUEST[map3]' and XSemester = '1' and XSetId='$id' and XNomerUjian='$user'");
				$tuts = mysql_fetch_array($uts);
				if(isset($tuts['totUTS'])){$totUTS1 = number_format($tuts['totUTS'], 2, ',', '.');
				$TUTS1 = $tuts['totUTS'];
				} else {$totUTS1="";$TUTS1="";}
				
				$uas = mysql_query("SELECT sum(XTotalNilai) as totUAS FROM cbt_nilai where XKodeKelas = '$_REQUEST[iki3]' and XNIK = '$nik' and XKodeUjian = 'UAS' and XKodeMapel = '$_REQUEST[map3]' and XSemester = '1' and XSetId='$id' and XNomerUjian='$user'");
				$tuas = mysql_fetch_array($uas);
				if(isset($tuas['totUAS'])){$totUAS1 = number_format($tuas['totUAS'], 2, ',', '.');
				$TUAS1 = $tuas['totUAS'];
				} else {$totUAS1="";$TUAS1="";}	
				
				if(!$totUTS1==""){
					$NUT1 = $TUTS1;	
					$NUA1 = $TUAS1;
					$NA1  = (($NUT1*($perUTS))+($NUA1*($perUAS))); // bila dihitung dari presentase
					$totNA1 = 	number_format(($NA1/100), 2, ',', '.');

				} else { $NA1 = ""; $totNA1 = "";}
				
				$uts2 = mysql_query("SELECT sum(XTotalNilai) as totUTS2 FROM cbt_nilai where XKodeKelas = '$_REQUEST[iki3]' and XNIK = '$nik' and XKodeUjian = 'UTS' and XKodeMapel = '$_REQUEST[map3]' and XSemester = '2' and XSetId='$id' and XNomerUjian='$user'");
				$tuts2 = mysql_fetch_array($uts2);
				if(isset($tuts2['totUTS2'])){$totUTS2 = number_format($tuts2['totUTS2'], 2, ',', '.');
				$TUTS2 = $tuts2['totUTS2'];
				} else {$totUTS2="";$TUTS2="";}
				
				$uas2 = mysql_query("SELECT sum(XTotalNilai) as totUAS2 FROM cbt_nilai where XKodeKelas = '$_REQUEST[iki3]' and XNIK = '$nik' and XKodeUjian = 'UAS' and XKodeMapel = '$_REQUEST[map3]' and XSemester = '2' and XSetId='$id' and XNomerUjian='$user'");
				$tuas2 = mysql_fetch_array($uas2);
				if(isset($tuas2['totUAS2'])){$totUAS2 = number_format($tuas2['totUAS2'], 2, ',', '.');
				$TUAS2 = $tuas2['totUAS2'];
				} else {$totUAS2="";$TUAS2="";}	
				
				if(!$totNA1=="s"){
				$NUT2 = $TUTS2;	
				$NUA2 = $TUAS2;	
	
				$NA2  = (($NUT2*($perUTS/100))+($NUA2*($perUAS/100))); // bila dihitung dari presentase
				//$NA1  = ( ($NH1*2)+$NUT1+$NUA1 )/4 ; //
				$totNA2 = 	number_format($NA2, 2, ',', '.');
				} else { $totNA2 = "";}
				
				if(!isset($NA2)){ $NA2 = 0;}

			if($NA2==""){$TotAkhir = ($NA1+$NA2)/100;} else {$TotAkhir = (($NA1+$NA2)/2)/100;}
			
			if($NA1==""&&$NA2==""){$TotAkhire ="";} else {
			$TotAkhire = number_format($TotAkhir, 2, ',', '.');
			}


			$tampilKKM = number_format($NilaiKKM, 2, ',', '.');

			if($TotAkhire == NULL){
				$nh = ' ';
			}else if($TotAkhire == 0 OR $TotAkhire <= 59){
				$nh = 'D';
			}else if($TotAkhire == 60 OR $TotAkhire <= 70){
				$nh = 'C';
			}else if($TotAkhire == 71 OR $TotAkhire <= 80){
				$nh = 'B';
			}else if($TotAkhire == 80 OR $TotAkhire <= 100){
				$nh = 'A';
			}
			?>
				<div style="background:#999; width:100%; height:1275px;" ><br>
					<div style="background:#fff; width:90%; margin:0 auto; padding:30px; height:90%;">
						<table border="0" width="100%">
							<tr>
    							<?php 
								$sqk = mysql_query("select * from cbt_tes where XKodeUjian = '$_REQUEST[tes3]'");
								$rs = mysql_fetch_array($sqk);
                             	$rs1 = strtoupper("$rs[XNamaUjian]");
								
								if($_REQUEST['tes3']=='A'){$namaujian = "HASIL SEMUA UJIAN ";} else {$namaujian = "HASIL $rs1";}
								?>                                
								<td rowspan="4" width="150"><img src="images/<?php echo "$logsek"; ?>" width="100"></td>
								<td colspan="2"><font size="+2"><b><?php echo "$namaujian"; ?></b></font></td>
							</tr>
							<tr>
   								 <?php 
								$sqk = mysql_query("select * from cbt_mapel where XKodeMapel = '$_REQUEST[map3]'");
								$rs = mysql_fetch_array($sqk);
                             	$rs1 = strtoupper("$rs[XNamaMapel]");
								$NilaiKKM2 = $rs['XKKM'];
								?>   
								<td width="20%">Mata Pelajaran</td><td>: <b><?php echo $rs1; ?> (Nilai KKM : <?php echo $NilaiKKM2; ?>)</b></td>
							</tr>
							<tr>
								<td>Kelas | Jurusan</td><td>: <b><?php echo $_REQUEST['iki3']; ?> | <?php echo $_REQUEST['jur3']; ?></b></td>
							</tr>
							<tr>
								<td>Tahun Akademik </td><td>: <b><?php echo $id; ?></b></td>
							</tr>
						</table><hr>
						<table border="1" width="100%" style="text-align:center">
							<tr bgcolor="#CCCCCC" height="30">
								<th width="5%" style="text-align:center" rowspan="2">No.</th>
								<th width="10%" style="text-align:center" rowspan="2">NIS</th>
								<th width="25%" rowspan="2" style="text-align:center">Nama Siswa</th>
								<th align="center"   width="25%" style="text-align:center" colspan="3">Semester 1</th><th width="25%" style="text-align:center" colspan="3">Semester 2</th>
								<th align="center"   width="5%" style="text-align:center" rowspan="2">NA</th>
								<th align="center"   width="5%" style="text-align:center" rowspan="2">NH</th>
							</tr>
							<tr>
								<td width="5%">UTS</td><td width="5%">UAS</td>
								<td width="5%">NILAI1</td>
								<td width="5%">UTS</td><td width="5%">UAS</td>
								<td width="5%">NILAI2</td>
							</tr>
							<tr height=30px><td>1.</td><td><?php echo $nik; ?></td><td><?php echo $val_siswa; ?></td>
							<td <?php if($totUTS1 <= NULL){
							   echo 'style="background-color:white; color:black;"';
							   } else if($totUTS1 <= 59){
							   echo 'style="background-color:red; color:white;"';
							   } else if($totUTS1 == 60 OR $totUTS1 <= 70){
							   echo 'style="background-color:yellow; color:black;"';
							   }else if($totUTS1 == 71 OR $totUTS1 <= 80){
							   echo 'style="background-color:blue; color:white;"';
							   }else if($totUTS1 == 81 OR $totUTS1 <= 100){
							   echo 'style="background-color:green; color:white;"';
							   }?>> <?php echo $totUTS1 ?></td>
							<td <?php if($totUAS1 <= NULL){
							   echo 'style="background-color:white; color:black;"';
							   } else if($totUAS1 <= 59){
							   echo 'style="background-color:red; color:white;"';
							   } else if($totUAS1 == 60 OR $totUAS1 <= 70){
							   echo 'style="background-color:yellow; color:black;"';
							   }else if($totUAS1 == 71 OR $totUAS1 <= 80){
							   echo 'style="background-color:blue; color:white;"';
							   }else if($totUAS1 == 81 OR $totUAS1 <= 100){
							   echo 'style="background-color:green; color:white;"';
							   }?>><?php echo $totUAS1 ?></td>
							<td <?php if($totNA1 <= NULL){
							   echo 'style="background-color:white; color:black;"';
							   } else if($totNA1 <= 59){
							   echo 'style="background-color:red; color:white;"';
							   } else if($totNA1 == 60 OR $totNA1 <= 70){
							   echo 'style="background-color:yellow; color:black;"';
							   }else if($totNA1 == 71 OR $totNA1 <= 80){
							   echo 'style="background-color:blue; color:white;"';
							   }else if($totNA1 == 81 OR $totNA1 <= 100){
							   echo 'style="background-color:green; color:white;"';
							   }?>><?php echo $totNA1 ?></td>
							<td <?php if($totUTS2 <= NULL){
							   echo 'style="background-color:white; color:black;"';
							   } else if($totUTS2 <= 59){
							   echo 'style="background-color:red; color:white;"';
							   } else if($totUTS2 == 60 OR $totUTS2 <= 70){
							   echo 'style="background-color:yellow; color:black;"';
							   }else if($totUTS2 == 71 OR $totUTS2 <= 80){
							   echo 'style="background-color:blue; color:white;"';
							   }else if($totUTS2 == 81 OR $totUTS2 <= 100){
							   echo 'style="background-color:green; color:white;"';
							   }?>> <?php echo $totUTS2 ?></td>
							<td <?php if($totUAS2 <= NULL){
							   echo 'style="background-color:white; color:black;"';
							   } else if($totUAS2 <= 59){
							   echo 'style="background-color:red; color:white;"';
							   } else if($totUAS2 == 60 OR $totUAS2 <= 70){
							   echo 'style="background-color:yellow; color:black;"';
							   }else if($totUAS2 == 71 OR $totUAS2 <= 80){
							   echo 'style="background-color:blue; color:white;"';
							   }else if($totUAS2 == 81 OR $totUAS2 <= 100){
							   echo 'style="background-color:green; color:white;"';
							   }?>><?php echo $totUAS2 ?></td>
							<td <?php if($totNA2 <= NULL){
							   echo 'style="background-color:white; color:black;"';
							   } else if($totNA2 <= 59){
							   echo 'style="background-color:red; color:white;"';
							   } else if($totNA2 == 60 OR $totNA2 <= 70){
							   echo 'style="background-color:yellow; color:black;"';
							   }else if($totNA2 == 71 OR $totNA2 <= 80){
							   echo 'style="background-color:blue; color:white;"';
							   }else if($totNA2 == 81 OR $totNA2 <= 100){
							   echo 'style="background-color:green; color:white;"';
							   }?>><?php echo $totNA2 ?></td>
							<td <?php if($TotAkhire <= NULL){
							   echo 'style="background-color:white; color:black;"';
							   } else if($TotAkhire <= 59){
							   echo 'style="background-color:red; color:white;"';
							   } else if($TotAkhire == 60 OR $TotAkhire <= 70){
							   echo 'style="background-color:yellow; color:black;"';
							   }else if($TotAkhire == 71 OR $TotAkhire <= 80){
							   echo 'style="background-color:blue; color:white;"';
							   }else if($TotAkhire == 81 OR $TotAkhire <= 100){
							   echo 'style="background-color:green; color:white;"';
							   }?>><?php echo $TotAkhire; ?></td>
							   <td><?php echo $nh;?></td>
							</tr>
						</table>
						<br>
						<p><b>Keterangan :</b><br>
						NA : Nilai Akhir<br>
						NH : Nilai Huruf<br><br>

						<b>Range Nilai :</b><br>
						81 - 100 : A [Hijau]<br>
						71 - 80  &nbsp;&nbsp;: B [Biru]<br>
						60 - 70  &nbsp;&nbsp;: C [Kuning]<br>
						0 - 59 &nbsp;&nbsp;&nbsp;&nbsp;: D [Merah]<br>
						</p><br>
						<p>
							<a href="laporan.php" class="btn btn-warning btn-sm" role="button">Kembali</a>
						</p>
					</div>
				</div>
			<?php
			}else{
			?>	
			<center><h2>Hasil Ujian</h2><center>
			<div class="panel-default">
                <div class="panel-heading">
                    <h1 class="panel-title page-label"><i class="glyphicon glyphicon-print"></i> | Hasil Ujian</h1>
                </div>
				<form action="" method="post">
					<div class="panel-body">
						<div class="inner-content">
							<div class="wysiwyg-content">
								<table width="100%" border="1">
									<tr height="30px">
										<td>Jenis Tes</td>
										<td>:                                 
											<select id="tes3"  name="tes3">                         
												<option value='UTS' selected>UTS</option>                            
												<option value='UAS'>UAS</option>                            
											</select>
										</td>
									</tr>
									<tr height="30px">
										<td>Semester</td>
										<td>:                                 
											<select id="sem3"  name="sem3">                           
												<option value='1' selected>Ganjil</option>                            
												<option value='2'>Genap</option>                            
											</select>
										</td>
									</tr>
									<tr height="30px">
										<td>Jurusan</td>
										<td>:                                 
											<select id="jur3"  name="jur3">                           
												<?php 
													$sqk = mysql_query("SELECT * FROM cbt_siswa WHERE XNomerUjian='$user'");
													while($rs = mysql_fetch_array($sqk)){
													echo "<option value='$rs[XKodeJurusan]'>$rs[XKodeJurusan]</option>";
												} ?>                           
											</select>
										</td>
									</tr>
									<tr height="30px">
										<td>Kelas</td>
										<td>:                                 
											<select id="iki3"  name="iki3">                           
												<?php 
													$sqk = mysql_query("SELECT * FROM cbt_siswa WHERE XNomerUjian='$user'");
													while($rs = mysql_fetch_array($sqk)){
													echo "<option value='$rs[XKodeKelas]'>$rs[XKodeKelas]</option>";
												} ?>                           
											</select>
										</td>
									</tr>
									<tr height="30px">
										<td>Mata Pelajaran</td>
										<td>:                                 
										<select id="map3"  name="map3">
											<?php 
											$sqk = mysql_query("select * from cbt_mapel");
											while($rs = mysql_fetch_array($sqk)){
											echo "<option value='$rs[XKodeMapel]'>$rs[XNamaMapel]</option>";
											} ?>                                
											</select>
										</td>
									</tr> 
								</table>                               
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col-xs-offset-7 col-xs-6">
							   <button type="submit" name="lihat" class="btn btn-default btn-sm">
							   <i class="glyphicon glyphicon-print"></i> Tampilkan</button>
							</div>
						</div>
					</div>
				</form>
            </div>
			<?php
			}
			?> 