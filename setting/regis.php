<?php
error_reporting(0);
include_once 'setting/database.php';

$nama_lengkap_daftar    = $_POST['nama_lengkap_daftar'];
$jk_daftar          = $_POST['jk_daftar'];
$alamat_daftar          = $_POST['alamat_daftar']; 
$username_daftar        = $_POST['username_daftar']; 
$password_daftar        = md5($_POST['password_daftar']);
$asal_sekolah_daftar = $_POST['asal_sekolah_daftar'];
$hp_daftar					= $_POST['hp_daftar'];
$tglahir_daftar			= $_POST['tglahir_daftar'];
$agama_daftar			= $_POST['agama_daftar'];
$email_daftar			= $_POST['email_daftar'];

if(empty($nama_lengkap_daftar)  || empty($jk_daftar) || empty($alamat_daftar) || empty($username_daftar) || empty($password_daftar)  || empty($asal_sekolah__daftar)  || empty($hp_daftar)  || empty($tglahir_daftar)  || empty($agama_daftar)  || empty($email_daftar)){
	die(pesan(0,"Semua Field Harus Di isi"));
}

if(!(int)$jk_daftar){
	die(pesan(0,"Pilih Jenis Kelamin"));
}

if($jk_daftar=="1"){ $jk = "Laki-laki"; }
else{ $jk = "Perempuan"; } 

$seleksi = mysqli_query($koneksi, "SELECT id_member FROM member WHERE username='$username_daftar'");
$jumlah_baris = mysqli_num_rows($seleksi);

if ($jumlah_baris == 0) {
  $isi = mysqli_query($koneksi, "INSERT INTO member(nama_lengkap, jk, alamat, username, password, asal_sekolah, hp, tglahir, agama, email) VALUES('$nama_lengkap_daftar','$jk','$alamat_daftar','$username_daftar','$password_daftar' ,'$asal_sekolah_daftar','$hp_daftar' ,'$tglahir_daftar' ,'$agama_daftar' ,'$email_daftar'  )");
  die(pesan(1,"Pendaftaran Berhasil, Silahkan Login"));
}
else {
  die(pesan(0,"Pendaftaran Gagal, Username Member sudah terdaftar"));
}

function pesan($status,$teks) {
	return '{"status":'.$status.',"teks":"'.$teks.'"}';
}