<?php 
  include 'database.php'; 

      $id_member= $_POST['id_member'];
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

      // $ekstensi_diperbolehkan = array('png','jpg');
      // $nama = $_FILES['file']['name'];
      // $x = explode('.', $nama);
      // $ekstensi = strtolower(end($x));
      // $ukuran = $_FILES['file']['size'];
      // $file_tmp = $_FILES['file']['tmp_name'];  


 
      // if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
      //   if($ukuran < 1044070){      
      //     move_uploaded_file($file_tmp, 'images/'.$nama);


$sql = "UPDATE `member` SET `id_member`='$id_member',`nama_lengkap`='$nama_lengkap',`jk`='$jk',`alamat`='$alamat',`username`='$username',`password`=MD5('$password'),`asal_sekolah`='$asal_sekolah',`hp`='$hp',`tglahir`='$tglahir',`agama`='$agama',`email`='$email',`level`='user' WHERE id_member=$id_member";
$query=mysqli_query($koneksi, $sql); 



      // $sql = "UPDATE `data_user` SET `username`='$username',`nama`='$nama',`alamat`='$alamat',`jenis_kelamin`='$jenis_kelamin',`agama`='$agama' WHERE id=$id";
      //   $query = mysqli_query($link, $sql);




      //     $query = mysqli_query($koneksi, "UPDATE member SET `nama_lengkap`='$nama_lengkap', `jk`='$jk', `alamat`='$alamat', `username`='$username', `password`='$password', `asal_sekolah`='$asal_sekolah', `hp`='$hp', `tglahir`='$tglahir', `agama`='$agama', `email`='$email', WHERE `id_member`='$id_member' ");
          if($query){
            echo ' 
             <script>
                  alert("Berhasil Di edit!");
                  window.location = "../admin/page/tabeldatasiswa.php"
                 </script>';
          }else{
            echo '<script>
                  alert("Gagal Di edit!");
                  window.location = "../admin/page/editbox.php"
                  </script>';
          }
       
     
 ?>











