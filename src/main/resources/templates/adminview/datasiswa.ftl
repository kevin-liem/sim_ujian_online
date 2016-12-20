<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Data Siswa - Admin</title>
    <!-- Bootstrap Core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/css/sb-admin.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>
    <div id="wrapper">
    <!-- Navigation -->
       <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/admin">Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">  
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Admin <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="/admin"><i class="fa fa-fw fa-dashboard"></i> Overview</a>
                    </li>

                    <li class="active">
                        <a href="/admin/data-siswa"><i class="glyphicon glyphicon-user"></i> Data Siswa</a>
                    </li>

                    <li>
                        <a href="/admin/data-nilai"><i class="fa fa-fw fa-table"></i> Data Nilai Siswa</a>
                    </li>

                    <li>
                        <a href="/admin/soal"><i class="fa fa-fw fa-file"></i> Soal</a>
                    </li>
                    <li>
                        <a href="/admin/regulasi"><i class="glyphicon glyphicon-option-vertical"></i> Regulasi</a>
                    </li>
                    <li >
                        <a href="/admin/jadwal"><i class="glyphicon glyphicon-calendar"></i> Waktu Ujian</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
        <div id="page-wrapper" style="overflow-x: hidden;">
            <!-- /.row -->
            <div class="row" >
                <div class="col-lg-12">
                    <h2>Daftar Siswa</h2>
                    <button class="btn btn-info btn-md" style="position: static;float: right;" data-toggle="modal" data-target="#tambahsiswa">
                        <span class="glyphicon glyphicon-plus"></span> Tambah Siswa 
                    </button>
                    <table class="table table-bordered" >
                        <thead>
                            <tr>
                                <th>NISN</th>
                                <th>Nama</th>
                                <th>Jurusan</th>
                                <th>Status Siswa</th>
                                <th>Status Ujian</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <#list siswamodel as user>
                            <tr>
                                <td>${user.nisn}</td>
                                <td>${user.username}</td>
                                <td>${user.jurusan}</td>
                                <td>${user.status_siswa}n</td>
                                <td>${user.status_ujian}</td>
                                <td>
                                    <a href="#" data-toggle="tooltip" title="Edit siswa"><button class="btn btn-warning btn-sm glyphicon glyphicon-pencil" data-toggle="modal" data-target="#editsiswa"></button></a>
                                    <a href="#" data-toggle="tooltip" title="Hapus Siswa"><button class="btn btn-danger btn-sm glyphicon glyphicon-remove" data-toggle="modal" data-target="#hapusiswa"></button></a>
                                </td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                    <!-- Modal -->
                    <div class="modal fade" id="tambahsiswa" role="dialog">
                        <div class="modal-dialog">
                          <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Input Siswa</h4>
                                </div>
                                <form>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Nama</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control" placeholder="Masukkan Nama">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">NISN</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control" placeholder="Masukkan NISN">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Jurusan</label>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Jurusan
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li>
                                                            <a href="#">IPA</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">IPS</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" data-dismiss="modal">Simpan</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                                    </div>
                                </form>
                            </div>          
                        </div>
                    <!-- /.modal -->
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="editsiswa" role="dialog">
                        <div class="modal-dialog">
                          <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Edit Siswa</h4>
                                </div>
                                <form>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Nama</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control" placeholder="Masukkan Nama">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">NISN</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control" placeholder="Masukkan NISN">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Jurusan</label>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Jurusan
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li>
                                                            <a href="#">IPA</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">IPS</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" data-dismiss="modal">Simpan</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                                    </div>
                                </form>
                            </div>          
                        </div>
                    <!-- /.modal -->
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="hapusiswa" role="dialog">
                        <div class="modal-dialog">
                          <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Hapus Siswa</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Apakah anda yakin menghapus data siswa ?</p>
                                </div>
                                <form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Hapus</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Tidak</button>
                                    </div>
                                </form>
                            </div>          
                        </div>
                    <!-- /.modal -->
                    </div>
                <!-- /.row -->
                </div>
            <!-- /.row -->
            </div>
        <!-- /.container-fluid -->
        </div>
    <!-- /#page-wrapper -->
    </div>
<!-- /#wrapper -->
<!-- jQuery -->
<script src="/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
$('[data-toggle="tooltip"]').tooltip(); 
});
</script>
</body>
</html>
