<?php 
  include('database.php');
  $id = $_GET['id'];
  $query = mysqli_query($koneksi, "DELETE FROM materi WHERE id= '$id' ");
  if($query){
    echo '
      <script>
      alert("Data Berhasil dihapus !");
      window.location = "../admin/page/materi.php";
      </script>
    ';
  }

 ?>
