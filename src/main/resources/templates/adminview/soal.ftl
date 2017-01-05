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

                    <li class="active">
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
        	<div class="row">
        		<div class="col-lg-12">
        		<h2>Daftar Soal</h2>
        		<button class="btn btn-info btn-md" style="position: static;float: right;" data-toggle="modal" data-target="#tambahsoal">
                        <span class="glyphicon glyphicon-plus"></span> Tambah Soal
                    </button>
                    <table class="table table-bordered" style="font-size: 10pt" >
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
						<#list soalList as soal>
							<tr>
								<td id="text">${soal.id_mapel}</td>
								<td id="text">${soal.soal}</td>
								<td id="text">${soal.jwb_a}</td>
								<td id="text">${soal.jwb_b}</td>
								<td id="text">${soal.jwb_c}</td>
								<td id="text">${soal.jwb_d}</td>
								<td id="text">${soal.jwb_e}</td>
								<td id="text">${soal.path_gmb}</td>
								<td id="text">${soal.kunci}</td>
								<td>
                                    <button class="btn btn-warning btn-sm" onclick="editSoal('${soal.id_soal}','${soal.id_mapel}','${soal.soal}','${soal.jwb_a}','${soal.jwb_b}','${soal.jwb_c}','${soal.jwb_d}','${soal.jwb_e}','${soal.path_gmb}','${soal.kunci}')" title="Edit Soal"><i class="glyphicon glyphicon-pencil"></i></button>
                                    <button class="btn btn-danger btn-sm" onclick="hapusSoal(${soal.id_soal})" title="Hapus Soal"><i class="glyphicon glyphicon-remove"></i></button>
								</td>
							</tr>
						</#list>
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
                                <form action="/admin/data-soal/save" method="post">
                                    <div class="modal-body">
                                        <div class="col-md-6">
                                            <label class="control-label">Mata Pelajaran</label>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="btn-group">
                                                <select name="id_mapel" class="form-control">
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
                                        <div class="col-md-6">
                                            <label class="control-label">Soal</label>
                                        </div>
                                        <div class="col-md-6">
                                            <textarea class="form-control" name="soal" rows="8" placeholder="Masukkan Soal"></textarea>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan A</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_a" id="jawaban" placeholder="Masukkan Jawaban A">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan B</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_b" id="jawaban" placeholder="Masukkan Jawaban B">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan C</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_c" id="jawaban" placeholder="Masukkan Jawaban C">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan D</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_d" id="jawaban" placeholder="Masukkan Jawaban D">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan E</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_e" id="jawaban" placeholder="Masukkan Jawaban E">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Kunci jawaban</label>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="btn-group">
                                                <select name="kunci" class="form-control">
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                    <option value="4">D</option>
                                                    <option value="5">E</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6"></div>
                                        <div class="input-group">
                                            <label class="input-group-btn">
                                                <span class="btn btn-primary">
                                                    Browse&hellip; <input type="file" name="gmb" style="display: none;">
                                                </span>
                                            </label>
                                            <input type="text" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-success" value="submit">Simpan</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <!-- /.modal -->
                    </div>

                    <div class="modal fade" id="editsoal" role="dialog">
                        <div class="modal-dialog">
                          <!-- Modal content-->
                            <div class="modal-content">
                                <form action="" id="form_edit_soal" method="get">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Edit Soal</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="col-md-6">
                                            <label class="control-label">Mata Pelajaran</label>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="btn-group">
                                            <#--<label class="control-label">Soal</label>-->
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
                                        <div class="col-md-6">
                                            <label class="control-label">Soal</label>
                                        </div>
                                        <div class="col-md-6">
                                            <textarea class="form-control" rows="8" id="soal" name="soal" placeholder="Masukkan Soal"></textarea>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan A</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_a" id="jwb_a" placeholder="Masukkan Jawaban A">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan B</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_b" id="jwb_b" placeholder="Masukkan Jawaban B">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan C</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_c" id="jwb_c" placeholder="Masukkan Jawaban C">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan D</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_d" id="jwb_d" placeholder="Masukkan Jawaban D">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Pilihan E</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="pil_e" id="jwb_e" placeholder="Masukkan Jawaban E">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Kunci jawaban</label>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="btn-group">
                                                <select name="kunci" id="kunci" class="form-control">
                                                    <option value="1">A</option>
                                                    <option value="2">B</option>
                                                    <option value="3">C</option>
                                                    <option value="4">D</option>
                                                    <option value="5">E</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6"></div>
                                        <div class="input-group">
                                            <label class="input-group-btn">
                                                <span class="btn btn-primary">
                                                    Browse&hellip; <input type="file" id="gmb" name="gmb" style="display: none;">
                                                </span>
                                            </label>
                                            <input type="text" id="path_gmb" class="form-control">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-success" value="submit">Simpan</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                                    </div>
                                </form>
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
                                    <h4 class="modal-title">Hapus Soal</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Apakah anda yakin menghapus soal ?</p>
                                </div>
                                <form action="" id="form_hapus_soal" method="post">
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-danger">Hapus</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Tidak</button>
                                    </div>
                                </form>
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
<script>
$(document).ready(function(){
$('[data-toggle="tooltip"]').tooltip();
    $(document).on('change', ':file', function() {
        var input = $(this),
                numFiles = input.get(0).files ? input.get(0).files.length : 1,
                label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [numFiles, label]);
    });

    // We can watch for our custom `fileselect` event like this
    $(document).ready( function() {
        $(':file').on('fileselect', function(event, numFiles, label) {

            var input = $(this).parents('.input-group').find(':text'),
                    log = numFiles > 1 ? numFiles + ' files selected' : label;

            if( input.length ) {
                input.val(log);
            } else {
                if( log ) alert(log);
            }

        });
    });
});

function hapusSoal(id_soal) {
    $("#form_hapus_soal").attr('action','/admin/data-soal/delete/'+id_soal);
    $("#hapussoal").modal('show');
}

function editSoal(id_soal,id_mapel,soal,jwb_a,jwb_b,jwb_c, jwb_d,jwb_e,path_gmb,kunci) {
    $("#form_edit_soal").attr('action','/admin/data-soal/edit/'+id_soal);
    $("#editsoal").modal('show');
    $("#mapel").val(id_mapel);
    $("#soal").val(soal);
    $("#jwb_a").val(jwb_a);
    $("#jwb_b").val(jwb_b);
    $("#jwb_c").val(jwb_c);
    $("#jwb_d").val(jwb_d);
    $("#jwb_e").val(jwb_e);
    $("#gmb").val(path_gmb);
    $("#path_gmb").val(path_gmb);
    $("#kunci").val(kunci);
}
</script>

</body>

</html>
