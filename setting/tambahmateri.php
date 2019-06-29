<?php

include("database.php");
// session_start();
// $session_id = $_SESSION['id'];
// if (isset($session_id)) {


// cek apakah tombol daftar sudah diklik atau blum?
    // if (isset($_POST['register'])) {
if($_POST){
        // ambil data dari formulir
        $judul = $_POST['judul'];
        $alamatweb = $_POST['alamatweb'];
        $keterangan = $_POST['keterangan'];
       
     
        
 //        $cek = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM materi WHERE judul='$judul'"));
 // if ($cek > 0){
 //    echo "<script>window.alert('Judul yang anda masukan sudah ada')
 //    window.location='../admin/page/materi.php'</script>";
 //    }else {


        // buat query

        // $sql = "INSERT INTO `member`(`nama_lengkap`, `alamat`,`username`, `password`, `asal_sekolah`, `hp`, `tglahir`, `agama`, `email`) 
        // VALUES ('$nama_lengkap','$alamat','$username','$password','$asal_sekolah','$hp','$tglahir','$agama','$email')";
        // $query = mysqli_query($link, $sql);


       $sql = "INSERT INTO `materi`(`id`, `judul`, `alamatweb`, `keterangan`) VALUES (NULL,'$judul','$alamatweb','$keterangan')";
 $query = mysqli_query($koneksi, $sql);






        // apakah query simpan berhasil?
        if ($query) {
            // kalau berhasil alihkan ke halaman index.php dengan status=sukses
         echo ' 
						 <script>
        					alert("Berhasil Ditambahkan!");
        					window.location = "../admin/page/materi.php"
      					 </script>';
      }else{
						echo '<script>
        					alert("Gagal Ditambahkan!");
        					window.location = "../admin/page/materi.php"
      					 	</script>';
					}

        }
        
  
?>