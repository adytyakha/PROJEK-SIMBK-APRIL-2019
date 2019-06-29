<?php 
session_start();

include_once '../../setting/database.php';
include_once '../../setting/status_session.php';
$id_member = $_SESSION['id_member'];

$nama_member = mysqli_query($koneksi, "SELECT nama_lengkap FROM member WHERE id_member='$id_member'");
$data=mysqli_fetch_array($nama_member);


?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIM BK | Tabel Data Siswa</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

       <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
         



          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../dist/img/avatar5.png" class="user-image" alt="User Image">
              <span class="hidden-xs"> <?php echo $data['nama_lengkap'];?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../dist/img/avatar5.png" class="img-circle" alt="User Image">

                <p>
                   <?php echo $data['nama_lengkap'];?>
                  <small>Online</small>
                </p>
              </li>
              <!-- Menu Body -->
  
              <!-- Menu Footer-->
              <li class="user-footer">
                
                <div class="pull-left">
                  <a href="../dasbor/logout.php" class="btn btn-default btn-flat">Keluar</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    
<section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../dist/img/avatar5.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p> <?php echo $data['nama_lengkap'];?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
           <li class="treeview">
          <li><a href="../index.php"><i class="fa fa-home"></i> <span>Dashboard</span>
            
            
          </a>  
        </li>
      </li>


       <li class="active treeview">
          <a href="#">
            <i class="fa fa-users"></i> <span>Data Siswa</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">

             <li><a href="pendaftaran.php"><i class="fa fa-user-plus"></i> Pendaftaran</a></li>           
        <li class="active"><a href="tabeldatasiswa.php"><i class="fa fa-user"></i> Tabel Data Siswa</a></li>
          </ul>
        </li>



<li class="treeview">
          <a href="#">
            <i class="fa fa-envelope"></i> <span>Chatting</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
           <ul class="treeview-menu">

             <li ><a href="../dasbor/index.php"><i class="fa fa-whatsapp"></i> Chat</a></li>           
            <li><a href="../chatgrub/index.php"><i class="fa  fa-comments"></i> Chat Grub</a></li>
          </ul>
        </li>



    <li class="treeview">
           <li ><a href="materi.php"><i class="glyphicon glyphicon-blackboard"></i> <span> Materi</span>
            
            
          </a>  
        </li>
        </li>
          <li class="treeview">
           <li ><a href="konseling.php"><i class="fa fa-bell"></i> <span> Konselor</span>
            
            
          </a>  
        </li>
        </li>

  <li class="treeview">
           <li><a href="galery.php"><i class="fa fa-image"></i> <span> Gallery</span>
            
            
          </a>  
        </li>
        </li>

       <li>
          <a href="../dasbor/logout.php">
            <i class="fa  fa-sign-out"></i> <span>Keluar</span>
           
          </a>
        </li>
      

 

      
      </ul>
    </section>




    <!-- /.sidebar -->
  </aside>
<section>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
  
   <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
              
                <thead>
                <tr>

                  <th>Id</th>
                  <th>Nama Lengkap</th>
                  <th>Jenis Kelamin</th>
                  <th>Username</th>
                  <th>Alamat</th>
                  <th>Asal Sekolah</th>
                  <th>Hp</th>
                  <th>Tanggal Lahir</th>
                  <th>Agama</th>
                  <th>Email</th>
                  <th>Tindakan </th>


                 
                </tr>
                </thead>



 <tbody>

<?php 
    require '../../setting/database.php';
    $query = mysqli_query($koneksi, "SELECT * FROM member  ");
                        while($array = mysqli_fetch_array($query)){
                          echo '

                                   
                                        <tr>
                                            
                                            <td> <span class="name">'.$array['id_member'].'</span> </td>
                                            <td>  <span class="name">'.$array['nama_lengkap'].'</span> </td>
                                            <td> <span class="name">'.$array['jk'].'</span> </td>
                                            <td> <span class="name">'.$array['username'].'</span> </td>
                                            <td> <span class="name">'.$array['alamat'].'</span> </td>
                                            <td> <span class="name">'.$array['asal_sekolah'].'</span> </td>
                                             <td> <span class="name">'.$array['hp'].'</span> </td>
                                              <td> <span class="name">'.$array['tglahir'].'</span> </td>
                                               <td> <span class="name">'.$array['agama'].'</span> </td>
                                                <td> <span class="name">'.$array['email'].'</span> </td>




                                            <td>
                                                
                                                <span><a href="editpendaftaran.php?id_member='.$array['id_member'].'"><button type="submit" class="btn btn-warning btn-sm">Edit</button></a></span>
                                                <span><a href="../../setting/delete.php?id_member='.$array['id_member'].'"><button type="button" class="btn btn-danger btn-sm">Delete</button></a></span>
                                            </td>

                                        </tr>
                                   
                                    ' ; } ?>
                                     </tbody>


         
         <!-- <tbody>
             
       <?php 
       $sql = $koneksi->query("SELECT * FROM member");
        while($data= $sql->fetch_assoc()){
          ?>
            <tr>

         <td><?php echo $data['id_member'];?></td>
         <td><?php echo $data['nama_lengkap'];?></td>
        <td><?php echo $data['jk'];?></td>
      <td><?php echo $data['alamat'];?></td>
       <td><?php echo $data['asal_sekolah'];?></td>
       <td><?php echo $data['hp'];?></td>
       <td><?php echo $data['tglahir'];?></td>
       <td><?php echo $data['agama'];?></td>
       <td><?php echo $data['email'];?></td>
      

            <td>
            <span><a href="editpendaftaran.php?id_member='.$array['id_member'].'"><button type="submit" class="btn btn-warning btn-sm">Edit</button></a></span>
           <a href="../../setting/delete.php?id_member=<?php echo $data['id_member']; ?>" onclick="return confirm('Anda yakin mau menghapus item ini ?')"  class="btn btn-danger">Hapus</a>
           
            </td>

           
            
            </tr> 
        <?PHP } ?>
                
                </tbody> -->
           
</table>
</div>








</div>
 </section>             
   <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2019 <a href="https://sisteminformasibkupgris.000webhostapp.com">Sistem Informasi BK</a>.</strong> All rights reserved  | SIMBK UPGRIS.
  </footer>

   
 </div>






  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
 
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>
