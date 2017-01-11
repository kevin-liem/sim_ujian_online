<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tunggu - Ujian Online Tingkat SMA</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/form-elements.css">
    <link rel="stylesheet" href="/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row top-title">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1 style="color: #000;"><strong>Ujian Online</strong> Tingkat SMA</h1>
                    <div class="description">
                        <p style="color: #000;">
                            Selamat datang <strong>${nama}</strong> di Aplikasi <strong>Ujian Online</strong> Tingkat SMA
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box well">
                    <div class="form-bottom">
                        <div class="alert alert-warning">
                            <p style="text-align: center; font-size: 14pt;"><strong>Terima Kasih</strong> telah melaksanakan Ujian</p>
                        </div>
                        <div class="alert alert-border-only">
                            <p style="text-align: center; font-size: 14pt;">Mata pelajaran yang telah diujikan</p>
                            <p style="text-align: center; font-size: 14pt;"><strong style="font-size: 20pt;" id="result"></strong></p>
                        </div>
                        <div class="alert alert-border-only">
                            <p style="text-align: center; font-size: 14pt;">Nilai Anda</p>
                            <p style="text-align: center; font-size: 14pt;"><strong style="font-size: 20pt;">${nilai}</strong></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Javascript -->
<script src="/js/jquery-1.11.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="/js/placeholder.js"></script>
<![endif]-->
<script type="text/javascript">
    var id_mapel = ${idMapel};
    if(id_mapel==1){
         document.getElementById("result").innerHTML = "Bahasa Indonesia";
    }else if(id_mapel==2){
         document.getElementById("result").innerHTML = "Bahas Inggris";
    }else if(id_mapel==3){
         document.getElementById("result").innerHTML = "Matematika";
    }else if(id_mapel==4){
         document.getElementById("result").innerHTML = "Biologi";
    }else if(id_mapel==5){
         document.getElementById("result").innerHTML = "Fisika";
    }else if(id_mapel==6){
         document.getElementById("result").innerHTML = "Kimia";
    }else if(id_mapel==7){
         document.getElementById("result").innerHTML = "Sosiologi";
    }else if(id_mapel==8){
         document.getElementById("result").innerHTML = "Geografi";
    }else if(id_mapel==9){
         document.getElementById("result").innerHTML = "Ekonomi";
    }

    window.setTimeout(function(){

        // Move to a new location or you can do something else
        window.location.href = "/";

    }, 5000);
</script>
</body>

</html>