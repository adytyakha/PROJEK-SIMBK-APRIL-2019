<?php
  include_once 'database.php';
  if (isset($_POST['submit_login'])) {
    $user = mysqli_real_escape_string($koneksi, $_POST['username_login']);
    $pass = mysqli_real_escape_string($koneksi,(md5($_POST['password_login'])) );
    
    
    $query = mysqli_query($koneksi, "SELECT * FROM member WHERE username='$user' AND password='$pass'");
    $data = mysqli_fetch_array($query);
    $id_member = $data['id_member'];
    $username = $data['username'];
    $password = $data['password'];
    $nama_lengkap   = $data['nama_lengkap'];
    $level    = $data['level'];

    if ($user==$username && $pass ==$password) {
      session_start();
      $_SESSION['id_member'] = $id_member;
      $_SESSION['user'] =$username;
      $_SESSION['nama_lengkap'] =$nama_lengkap;
      $_SESSION['level']  =$level;
      if ($level == 'admin') {
        echo "<script>alert('Anda berhasil login. Sebagai : $level');</script>";
        echo "<meta http-equiv='refresh' content='0; url=../admin/index.php'>";
      }else{
        echo "<script>alert('Anda berhasil Log In. Sebagai : $level');</script>";
        echo "<meta http-equiv='refresh' content='0; url=../user/index.php'>";
      }
    }else{
      echo "<script>alert('Username dan Password Tidak Ditemukan');</script>";
      echo "<meta http-equiv='refresh' content='0; url=../login.php'>";
    }
  }
?>