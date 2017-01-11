<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Nilai - Admin</title>
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

                    <li class="active">
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
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Tabel Nilai</h2>
                        <div>
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
										<th>NISN</th>
										<th>Nama</th>
                                        <th>Bahasa Indonesia</th>
                                        <th>Matematika</th>
                                        <th>Bahasa Inggris</th>
                                        <th>Biologi</th>
                                        <th>Fisika</th>
                                        <th>Kimia</th>
										<th>Sosiologi</th>
										<th>Ekonomi</th>
										<th>Geografi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <#list nilailist as nilai>
                                    <tr>
                                        <td>${nilai.nisn}</td>
                                        <td>${nilai.username}</td>
                                        <td>${nilai.bind}</td>
                                        <td>${nilai.bing}</td>
                                        <td>${nilai.mat}</td>
                                        <td>${nilai.bio}</td>
                                        <td>${nilai.fis}</td>
                                        <td>${nilai.kim}</td>
                                        <td>${nilai.sos}</td>
                                        <td>${nilai.eko}</td>
                                        <td>${nilai.geo}</td>
                                    </tr>
                                    </#list>
                                </tbody>
                            </table>

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
</body>
</html>
