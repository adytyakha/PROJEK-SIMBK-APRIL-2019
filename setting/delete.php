<?php 
  include('database.php');
  $id_member = $_GET['id_member'];
  $query = mysqli_query($koneksi, "DELETE FROM member WHERE id_member= '$id_member' ");
  if($query){
    echo '
      <script>
      alert("Data Berhasil dihapus !");
      window.location = "../admin/page/tabeldatasiswa.php";
      </script>
    ';
  }

 ?>
