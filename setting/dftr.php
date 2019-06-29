<?php

include("database.php");
// session_start();
// $session_id = $_SESSION['id'];
// if (isset($session_id)) {


// cek apakah tombol daftar sudah diklik atau blum?
    // if (isset($_POST['register'])) {
if($_POST){
        // ambil data dari formulir
        $nama_lengkap = $_POST['nama_lengkap'];
        $jk = $_POST['jk'];
        $alamat = $_POST['alamat'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $asal_sekolah = $_POST['asal_sekolah'];
        $hp = $_POST['hp'];
        $tglahir = $_POST['tglahir'];
        $agama = $_POST['agama'];
        $email = $_POST['email'];
        
       
 $cek = mysqli_num_rows(mysqli_query($koneksi,"SELECT * FROM member WHERE username='$username'"));
 if ($cek > 0){
    echo "<script>window.alert('Username yang anda masukan sudah terdaftar')
    window.location='../register.php'</script>";
    }else {
        // buat query

        // $sql = "INSERT INTO `member`(`nama_lengkap`, `alamat`,`username`, `password`, `asal_sekolah`, `hp`, `tglahir`, `agama`, `email`) 
        // VALUES ('$nama_lengkap','$alamat','$username','$password','$asal_sekolah','$hp','$tglahir','$agama','$email')";
        // $query = mysqli_query($link, $sql);


       $sql = "INSERT INTO `member`(`id_member`, `nama_lengkap`, `jk`, `alamat`, `username`, `password`, `asal_sekolah`, `hp`, `tglahir`, `agama`, `email`) VALUES (NULL, '$nama_lengkap', '$jk', '$alamat', '$username',  MD5('$password'), '$asal_sekolah', '$hp', '$tglahir', '$agama', '$email')";
 $query = mysqli_query($koneksi, $sql);





        // apakah query simpan berhasil?
        if ($query) {
            // kalau berhasil alihkan ke halaman index.php dengan status=sukses
          
          echo ' 
                         <script>
                            alert("Selamat, Anda Berhasil Mendaftar!");
                            window.location = "../login.php"
                         </script>';
        } else {
            echo '<script>
                            alert("Gagal Ditambahkan!");
                            window.location = "../register.php"
                            </script>';
                    }
    }
}
?>