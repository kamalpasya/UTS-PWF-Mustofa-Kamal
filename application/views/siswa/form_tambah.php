<html>
	<head>
		<title>Input Mahasiswa</title>
	</head>
	<body>
		<h1>Form Tambah Data Mahasiswa</h1>
		<hr>
		<div style="color: red;"><?php echo validation_errors(); ?></div>

		<?php echo form_open("siswa/tambah"); ?>
			<table cellpadding="8">
				<tr>
					<td>ID</td>
					<td><input type="text" name="input_id" value="<?php echo set_value('input_id'); ?>"></td>
				</tr>
				<tr>
					<td>NIM</td>
					<td><input type="text" name="input_nim" value="<?php echo set_value('input_nim'); ?>"></td>
				</tr>
				<tr>
					<td>Nama</td>
					<td><input type="text" name="input_nama" value="<?php echo set_value('input_nama'); ?>"></td>
				</tr>
				<tr>
					<td>Jenis Kelamin</td>
					<td>
					<input type="radio" name="input_jenkel" value="L" <?php echo set_radio('jenkel', 'L'); ?>> L
					<input type="radio" name="input_jenkel" value="P" <?php echo set_radio('jenkel', 'P'); ?>> P
					</td>
				</tr>
				<tr>
					<td>Telepon</td>
					<td><input type="text" name="input_telp" value="<?php echo set_value('input_no_hp'); ?>"></td>
				</tr>
				<tr>
					<td>Alamat</td>
					<td><textarea name="input_alamat"><?php echo set_value('input_alamat'); ?></textarea></td>
				</tr>
			</table>
				
			<hr>
			<input type="submit" name="submit" value="Simpan">
			<a href="<?php echo base_url(); ?>"><input type="button" value="Batal"></a>
		<?php echo form_close(); ?>
	</body>
</html>
