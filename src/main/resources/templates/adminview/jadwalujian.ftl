<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Jadwal Ujian - Admin</title>

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

                    <li>
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
                    <li class="active">
                        <a href="/admin/jadwal"><i class="glyphicon glyphicon-calendar"></i> Waktu Ujian</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper" style="overflow-x: hidden;">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Jadwal Ujian</h2>

                    <button class="btn btn-info btn-md" style="position: static;float: right;" data-toggle="modal" data-target="#tambahjadwal">
                        <span class="glyphicon glyphicon-plus"></span> Tambah Siswa 
                    </button>
                    <table class="table table-bordered" >
                        <thead>
                            <tr>
                                <th>Tanggal Ujian</th>
                                <th>Jam Ujian</th>
                                <th>Mata Pelajaran</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <#list jadwalList as jadwal>
                            <tr>
                                <td>${jadwal.tanggal}</td>
                                <td>${jadwal.waktu}</td>
                                <input type="hidden" name="mapel" value="${jadwal.id_mapel}">
                                <td><p1></p1></td>
                                <td>
                                    <a href="#" data-toggle="tooltip" title="Edit jadwal"><button class="btn btn-warning btn-sm glyphicon glyphicon-pencil" data-toggle="modal" data-target="#editjadwal"></button></a>
                                    <a href="#" data-toggle="tooltip" title="Hapus jadwal"><button class="btn btn-danger btn-sm glyphicon glyphicon-remove" data-toggle="modal" data-target="#hapusjadwal"></button></a>
                                </td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>

                    <div class="modal fade" id="tambahjadwal" role="dialog">
                        <div class="modal-dialog">
                          <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Tambah Jadwal</h4>
                                </div>
                                <form action="/admin/jadwal/save" method="post">
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Tanggal Ujian</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="date" name="tanggal">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Waktu Ujian</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="time" name="waktu">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Mata Pelajaran</label>
                                            </div>
                                            <div class="col-md-6">
                                                <select name="id_mapel" id="mapel" class="form-control">
                                                    <option value="1">Bahasa Indonesia</option>
                                                    <option value="2">Bahasa Inggris</option>
                                                    <option value="3">Matematika</option>
                                                    <option value="4">Biologi</option>
                                                    <option value="5">Fisika</option>
                                                    <option value="6">Kimia</option>
                                                    <option value="7">Sosiologi</option>
                                                    <option value="8">Geografi</option>
                                                    <option value="9">Ekonomi</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-success" value="submit">Simpan</button>
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                                        </div>
                                    </div>
                                </form>
                    <!-- /.modal -->
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="editJadwal" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Edit Jadwal</h4>
                                </div>
                                <form action="/admin/jadwal/save" method="post">
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Tanggal Ujian</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="date" name="tanggal">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Waktu Ujian</label>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="time" name="waktu">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="control-label">Mata Pelajaran</label>
                                            </div>
                                            <div class="col-md-6">
                                                <select name="id_mapel" id="mapel" class="form-control">
                                                    <option value="1">Bahasa Indonesia</option>
                                                    <option value="2">Bahasa Inggris</option>
                                                    <option value="3">Matematika</option>
                                                    <option value="4">Biologi</option>
                                                    <option value="5">Fisika</option>
                                                    <option value="6">Kimia</option>
                                                    <option value="7">Sosiologi</option>
                                                    <option value="8">Geografi</option>
                                                    <option value="9">Ekonomi</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-success" value="submit">Simpan</button>
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                                        </div>
                                    </div>
                                </form>
                                <!-- /.modal -->
                            </div>
                        </div>
                    </div>

                    <!-- /.modal -->
                    <div class="modal fade" id="hapusjadwal" role="dialog">
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
                </div>
            </div>
    <!-- /#wrapper -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/js/bootstrap.min.js"></script>
    <script>
    $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
    });

    var x = document.getElementsByName("mapel");
    for(var i=0;i<x.length;i++){
        var y = x[i].value;
        if(y==1){
            document.getElementsByTagName("p1")[i].innerHTML = "Bahasa Indonesia";
        }else if(y==2){
            document.getElementsByTagName("p1")[i].innerHTML = "Bahas Inggris";
        }else if(y==3){
            document.getElementsByTagName("p1")[i].innerHTML = "Matematika";
        }else if(y==4){
            document.getElementsByTagName("p1")[i].innerHTML = "Biologi";
        }else if(y==5){
            document.getElementsByTagName("p1")[i].innerHTML = "Fisika";
        }else if(y==6){
            document.getElementsByTagName("p1")[i].innerHTML = "Kimia";
        }else if(y==7){
            document.getElementsByTagName("p1")[i].innerHTML = "Sosiologi";
        }else if(y==9){
            document.getElementsByTagName("p1")[i].innerHTML = "Geografi";
        }else{
            document.getElementsByTagName("p1")[i].innerHTML = "Ekonomi";
        }
    }
    </script>
</body>

</html>
