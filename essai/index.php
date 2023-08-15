<h2>JAWAB PERTANYAAN BERIKUT</h2>
<h3>Nomor 1 bernilai 30, nomor 2 bernilai 70 (bila menjawab minimal 7)</h3>

<?php
	$nilai_siswa = 0;
	$poin_siswa = 0;
	
	$soal1 = "Sebutkan sungai terpanjang di Indonesia?";
	$jawaban1 = "kapuas";
	$nilai1 = 30;
	
	$soal2 = "Negara di ASEAN?";
	$jawaban2 = "indonesia, malaysia, singapura, thailand, filipina, brunei darussalam, vietnam, laos";
	$nilai2 = 70;
?>
<table>
	<tr>
		<td>No.</td>
		<td align="center">Soal</td>
		<td align="center">Jawaban</td>
	</tr>
	<form action="" method="post">
	<tr>
		<td>1.</td>
		<td><?php echo $soal1; ?></td>
		<td><input type="text" name="jawaban1"></td>
	</tr>
	<tr valign="top">
		<td>2.</td>
		<td><?php echo $soal2; ?></td>
		<td><textarea type="text" class="form-control" name="jawaban2" placeholder="Pisahkan dengan koma. Tanpa akhiran titik." rows="4" cols="50"></textarea></td>
	</tr>
	<tr>
		<td colspan="3" align="right"><button type="submit" name="input" class="btn btn-primary btn-lg">Koreksi</button></td>
	</tr>
	</form>
</table>

<?php
	if(isset($_POST['input'])) {
		$jawaban_siswa_nomor1 = strtolower($_POST['jawaban1']);

		if (strpos($jawaban_siswa_nomor1, $jawaban1) !== false) {
			$nilai_siswa += $nilai1;
		}
		// ==========================
		$jawaban_siswa_nomor2 = strtolower($_POST['jawaban2']);
		
		$jawaban2_pecahan =  explode(", ", $jawaban2);
		foreach($jawaban2_pecahan as $v){
			if (strpos($jawaban_siswa_nomor2, $v) !== false) {
				$poin_siswa += 1;
			}
		}
		if ($poin_siswa > 7){
			$nilai_siswa += $nilai2;
		} else if ($poin_siswa == 6){
			$nilai_siswa += 60;
		} else if ($poin_siswa == 5){
			$nilai_siswa += 50;
		} else if ($poin_siswa == 4){
			$nilai_siswa += 40;
		} else if ($poin_siswa == 3){
			$nilai_siswa += 30;
		} else if ($poin_siswa == 2){
			$nilai_siswa += 20;
		} else if ($poin_siswa == 1){
			$nilai_siswa += 10;
		}
		// ==========================
		
		echo "Nilai Siswa : ".$nilai_siswa;
		
	}
?>