<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Soal - Admin</title>

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
    <style type="text/css">
    	.file {
		  visibility: hidden;
		  position: absolute;
		}
    </style>
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
                <a class="navbar-brand" href="/adminview/overview">Admin</a>
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
                    <li >
                        <a href="/adminview/overview"><i class="fa fa-fw fa-dashboard"></i> Overview</a>
                    </li>

                    <li>
                        <a href="/adminview/datasiswa"><i class="glyphicon glyphicon-user"></i> Data Siswa</a>
                    </li>

                    <li>
                        <a href="/adminview/datanilai"><i class="fa fa-fw fa-table"></i> Data Nilai Siswa</a>
                    </li>

                    <li class="active">
                        <a href="/adminview/soal"><i class="fa fa-fw fa-file"></i> Soal</a>
                    </li>
                    <li>
                        <a href="/adminview/regulasi"><i class="glyphicon glyphicon-option-vertical"></i> Regulasi</a>
                    </li>
                    <li>
                        <a href="/adminview/jadwalujian"><i class="glyphicon glyphicon-calendar"></i> Waktu Ujian</a>
                    </li>  
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper" style="overflow-x: hidden;">
        	<div class="row">
        		<div class="col-lg-12">
        		<h2>Daftar Soal</h2>
        		<button class="btn btn-info btn-md" style="position: static;float: right;" data-toggle="modal" data-target="#tambahsoal">
                        <span class="glyphicon glyphicon-plus"></span> Tambah Siswa 
                    </button>
                    <table class="table table-bordered" >
                        <thead>
                            <tr>
                                <th>Mata Pelajaran</th>
                                <th>Soal</th>
                                <th>Jawaban A</th>
                                <th>Jawaban B</th>
                                <th>Jawaban C</th>
                                <th>Jawaban D</th>
                                <th>Jawaban E</th>
                                <th>gambar</th>
                                <th>Kunci Jawaban</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Matematika</td>
                                <td>1 + 1 =</td>
                                <td>3</td>
                                <td>1</td>
                                <td>12</td>
                                <td>12</td>
                                <td>4</td>
                                <td>gambar</td>
                                <td>A</td>
                                <td>
                                    <a href="#" data-toggle="tooltip" title="Edit Soal"><button class="btn btn-warning btn-sm glyphicon glyphicon-pencil" data-toggle="modal" data-target="#editsoal"></button></a>
                                    <a href="#" data-toggle="tooltip" title="Hapus Soal"><button class="btn btn-danger btn-sm glyphicon glyphicon-remove" data-toggle="modal" data-target="#hapussoal"></button></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="modal fade" id="tambahsoal" role="dialog">
                        <div class="modal-dialog">
                          <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Tambah Soal</h4>
                                </div>
                                <div class="modal-body">
                                   	<div class="col-md-4">
				                        <label class="control-label">Mata Pelajaran</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <div class="btn-group"> 
				                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Mapel
				                                <span class="caret"></span>
				                            </button>                                 
				                            <ul class="dropdown-menu" role="menu"> 
				                                <li><a href="#">Bahasa Indonesia</a></li>
				                                <li><a href="#">Bahasa Inggris</a></li>    
				                                <li><a href="#">Matematika</a></li>
				                                <li><a href="#">Fisika</a></li>
				                                <li><a href="#">Biologi</a></li>
				                                <li><a href="#">Kimia</a></li>
				                                <li><a href="#">Sosiologi</a></li>
				                                <li><a href="#">Ekonomi</a></li>
				                                <li><a href="#">Geografi</a></li>
				                            </ul>                                 
				                        </div>                             
				                    </div>
				        			<div class="col-md-4">
				                        <label class="control-label">Soal</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <textarea class="form-control" rows="8" placeholder="Masukkan Soal"></textarea>   
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Kunci jawaban</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <div class="btn-group"> 
				                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Kunci Jawaban<span class="caret"></span>
				                            </button>                                 
				                            <ul class="dropdown-menu" role="menu"> 
				                                <li><a href="#">A</a></li>
				                                <li><a href="#">B</a></li>
				                                <li><a href="#">C</a></li>
				                                <li><a href="#">D</a></li>
				                                <li><a href="#">E</a></li>
				                            </ul>                                 
				                        </div>                             
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan A</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban A">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan B</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban B">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan C</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban C">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan D</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban D">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan E</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban E">
				                    </div>
				                    <div class="col-md-4"></div>
				                    <input type="file" name="img[]" class="file">
								    <div class="input-group col-xs-6">
								      	<span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
								      	<input type="text" class="form-control input-sm" disabled placeholder="Upload Image">
								      	<span class="input-group-btn">
								        	<button class="browse btn btn-primary input-sm" type="button"><i class="glyphicon glyphicon-search"></i> Browse</button>
								      </span>
								    </div> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Simpan</button>
                       				<button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                                </div>
                            </div>          
                        </div>
                    <!-- /.modal -->
                    </div>
                    <div class="modal fade" id="editsoal" role="dialog">
                        <div class="modal-dialog">
                          <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Edit Soal</h4>
                                </div>
                                <div class="modal-body">
                                   	<div class="col-md-4">
				                        <label class="control-label">Mata Pelajaran</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <div class="btn-group"> 
				                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Mapel
				                                <span class="caret"></span>
				                            </button>                                 
				                            <ul class="dropdown-menu" role="menu"> 
				                                <li><a href="#">Bahasa Indonesia</a></li>
				                                <li><a href="#">Bahasa Inggris</a></li>    
				                                <li><a href="#">Matematika</a></li>
				                                <li><a href="#">Fisika</a></li>
				                                <li><a href="#">Biologi</a></li>
				                                <li><a href="#">Kimia</a></li>
				                                <li><a href="#">Sosiologi</a></li>
				                                <li><a href="#">Ekonomi</a></li>
				                                <li><a href="#">Geografi</a></li>
				                            </ul>                                 
				                        </div>                             
				                    </div>
				        			<div class="col-md-4">
				                        <label class="control-label">Soal</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <textarea class="form-control" rows="8" placeholder="Masukkan Soal"></textarea>   
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Kunci jawaban</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <div class="btn-group"> 
				                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Kunci Jawaban<span class="caret"></span>
				                            </button>                                 
				                            <ul class="dropdown-menu" role="menu"> 
				                                <li><a href="#">A</a></li>
				                                <li><a href="#">B</a></li>
				                                <li><a href="#">C</a></li>
				                                <li><a href="#">D</a></li>
				                                <li><a href="#">E</a></li>
				                            </ul>                                 
				                        </div>                             
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan A</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban A">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan B</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban B">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan C</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban C">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan D</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban D">
				                    </div>
				                    <div class="col-md-4">
				                        <label class="control-label">Pilihan E</label>                             
				                    </div>
				                    <div class="col-md-6">
				                        <input type="text" class="form-control" placeholder="Masukkan Jawaban E">
				                    </div>
				                    <<div class="col-md-4"></div>
				                    <input type="file" name="img[]" class="file">
								    <div class="input-group col-xs-6">
								      	<span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
								      	<input type="text" class="form-control input-sm" disabled placeholder="Upload Image">
								      	<span class="input-group-btn">
								        	<button class="browse btn btn-primary input-sm" type="button"><i class="glyphicon glyphicon-search"></i> Browse</button>
								      </span>
								    </div> 
	                                <div class="modal-footer">
	                                    <button type="button" class="btn btn-success" data-dismiss="modal">Simpan</button>
	                       				<button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
	                                </div>
                            	</div>          
                        	</div>
                    	<!-- /.modal -->
                    	</div>
        			</div>
        			<div class="modal fade" id="hapussoal" role="dialog">
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
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Hapus</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Tidak</button>
                                </div>
                            </div>          
                        </div>
                    <!-- /.modal -->
                    </div>
        		</div>
                <!-- /.row -->
        </div>
            <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

<!-- jQuery -->
<script src="/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).on('click', '.browse', function(){
	  var file = $(this).parent().parent().parent().find('.file');
	  file.trigger('click');
	});
	$(document).on('change', '.file', function(){
	  $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
	});
</script>
<script>
$(document).ready(function(){
$('[data-toggle="tooltip"]').tooltip(); 
});
</script>

</body>

</html>
