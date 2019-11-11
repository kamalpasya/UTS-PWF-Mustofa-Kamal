<html>
	<head>
		<title>Input Mahasiswa</title>
	</head>
	<body>
		<h1>Form Ubah Data Mahasiswa</h1>
		<hr>
		<div style="color: red;"><?php echo validation_errors(); ?></div>

		<?php echo form_open("siswa/ubah/".$mahasiswa->nim); ?>
			<table cellpadding="8">
				<tr>
					<td>ID</td>
					<td><input type="text" name="input_id" value="<?php echo set_value('input_id', $mahasiswa->id); ?>"></td>
				</tr>
					<td>NIM</td>
					<td><input type="text" name="input_nim" value="<?php echo set_value('input_nim', $mahasiswa->nim); ?>"></td>
				</tr>
				<tr>
					<td>Nama</td>
					<td><input type="text" name="input_nama" value="<?php echo set_value('input_nama', $mahasiswa->nama); ?>"></td>
				</tr>
				<tr>
					<td>Jenis Kelamin</td>
					<td>
					<input type="radio" name="input_jenkel" value="L" <?php echo set_radio('jenkel', 'L', ($mahasiswa->jenkel == "L")? true : false); ?>> L
					<input type="radio" name="input_jenkel" value="P" <?php echo set_radio('jenkel', 'P', ($mahasiswa->jenkel == "P")? true : false); ?>> P
					</td>
				</tr>
				<tr>
					<td>Telepon</td>
					<td><input type="text" name="input_no_hp" value="<?php echo set_value('input_no_hp', $mahasiswa->no_hp); ?>"></td>
				</tr>
				<tr>
					<td>Alamat</td>
					<td><textarea name="input_alamat"><?php echo set_value('input_alamat', $mahasiswa->alamat); ?></textarea></td>
				</tr>
			</table>
				
			<hr>
			<input type="submit" name="submit" value="Ubah">
			<a href="<?php echo base_url(); ?>"><input type="button" value="Batal"></a>
		<?php echo form_close(); ?>
	</body>
</html>
