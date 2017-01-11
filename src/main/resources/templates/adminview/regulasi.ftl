<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Regulasi - Admin</title>
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
                            <a href="/"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="/admin/data-siswa"><i class="glyphicon glyphicon-user"></i> Data Siswa</a>
                    </li>

                    <li>
                        <a href="/admin/data-nilai"><i class="fa fa-fw fa-table"></i> Data Nilai Siswa</a>
                    </li>

                    <li>
                        <a href="/admin/soal"><i class="fa fa-fw fa-file"></i> Soal</a>
                    </li>
                    <li class="active">
                        <a href="/admin/regulasi"><i class="glyphicon glyphicon-option-vertical"></i> Regulasi</a>
                    </li>
                    <li >
                        <a href="/admin/jadwal"><i class="glyphicon glyphicon-calendar"></i> Waktu Ujian</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
        <div id="page-wrapper">
            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Regulasi</h2>
                        <ol class="breadcrumb">
                            <div class="col-md-4">
                                <input type="text" class="form-control" placeholder="Masukkan NISN">                                     
                            </div>
                            <button type="button" class="btn btn-default glyphicon glyphicon-search"></button>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Status Ujian</th>
                                        <th>NISN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <#list regulasiList as regulasi>
                                    <tr>
                                        <input type="hidden" name="status_siswa" value="${regulasi.status_siswa}">
                                        <td>
                                            <select name="regulasi" class="form-control">
                                                <option value="1">Diizinkan</option>
                                                <option value="0">Tidak Diizinkan</option>
                                            </select>
                                        </td>
                                        <td>${regulasi.nisn}</td>
                                        <p></p>
                                    </tr>
                                </#list>
                                </tbody>
                            </table>
                        </div>
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

        var x = document.getElementsByName("status_siswa");
        for(var i=0;i<x.length;i++){
            var y = x[i].value;
            document.getElementsByName("regulasi")[i].value = y;
        }

        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });

    </script>
    </body>
</html>
