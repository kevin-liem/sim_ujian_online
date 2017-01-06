<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Soal - Ujian Online Tingkat SMA</title>

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
                    <h3 style="color: #000;">Selamat Ujian <strong>${nama}</strong></h3>
                    <h2 style="color: #000;"><strong>47:29</strong></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 form-soal well">
                    <div class="form-bottom">
                        <div class="form-list-soal">
                            <h3 style="text-align: center;color: #000;">Soal <span id="nomersoal"></span></h3>
                            <img class="center-block" id="gambar" src="/" />
						<#--<#if listSoal[0].path_gmb??><img class="center-block" id="gambar" src="/${listSoal[0].path_gmb}" /></#if>-->
                            <p style="text-align: justify;" id="soal">
							<#--${listSoal[0].soal}-->
                            </p>
                        </div>
                        <div class="form-list-jawab">
                            <h3 style="text-align: center;color: #000">Jawaban</h3>
                            <form action="">
                                <div class="radio">
                                    <label><input id="radioA" type="radio" name="pilihan">
                                        <#--<span id="jwb_a">A. ${soal.jwb_a}</span>-->
                                        <span id="jwb_a"></span>
                                    </label>
                                </div>
                                <div class="radio">
                                    <label><input id="radioB" type="radio" name="pilihan">
                                        <span id="jwb_b"></span>
                                    </label>
                                </div>
                                <div class="radio">
                                    <label><input id="radioC" type="radio" name="pilihan">
                                        <span id="jwb_c"></span>
                                    </label>
                                </div>
                                <div class="radio">
                                    <label><input id="radioD" type="radio" name="pilihan">
                                        <span id="jwb_d"></span>
                                    </label>
                                </div>
                                <div class="radio">
                                    <label><input id="radioE" type="radio" name="pilihan">
                                        <span id="jwb_e"></span>
                                    </label>
                                </div>
                            </form>
                        </div>
                    </div>
                    <ul class="pagination center-pagination">
                        <li><button id="button_prev">Prev</button></li>
                        <li><input type="number" name="page" id="id_soal" min="1" max="20" style="width: 63px;" ></li>
                        <li><button id="button_next">Next</button></li>
                    </ul>
                    <form action="">
                        <button id="button_submit">Submit</button>
                    </form>
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
<script>
    var listSoal = [
        <#list listSoal as soalObj>
            {
                idSoal:${soalObj.id_soal},
                idMapel:${soalObj.id_mapel},
                soal:"${soalObj.soal}",
                jwbA:"${soalObj.jwb_a}",
                jwbB:"${soalObj.jwb_b}",
                jwbC:"${soalObj.jwb_c}",
                jwbD:"${soalObj.jwb_d}",
                jwbE:"${soalObj.jwb_e}",
                kunciJwb:${soalObj.kunci},
                pathGambar:"/<#if soalObj.path_gmb??>${soalObj.path_gmb}</#if>"
            },
        </#list>
    ];

    var jmlSoal = 10;
    var indexSoal = 0;

    // Store temp answer in int number
    var tempJawaban = [];
    for(var i=0;i<jmlSoal;i++){
        tempJawaban[i]=0;
    }

    // Check if there is image available
    if(listSoal[indexSoal].pathGambar != "/"){
        $("#gambar").show();
        $("#gambar").attr("src", listSoal[indexSoal].pathGambar);
    }
    else {
        $("#gambar").hide();
    }
    $("#nomersoal").text(indexSoal + 1);
    $("#soal").text(listSoal[indexSoal].soal);
    $("#jwb_a").text("A. " + listSoal[indexSoal].jwbA);
    $("#jwb_b").text("B. " + listSoal[indexSoal].jwbB);
    $("#jwb_c").text("C. " + listSoal[indexSoal].jwbC);
    $("#jwb_d").text("D. " + listSoal[indexSoal].jwbD);
    $("#jwb_e").text("E. " + listSoal[indexSoal].jwbE);

    // Pagination input textbox
    $("#id_soal").value = indexSoal + 1;

//    $("#radioA, #radioB, #radioC, #radioD, #radioE").change(function () {
//        if ($("#radioA").is(":checked")) {
//            tempJawaban[indexSoal] = 1;
//        }
//        else if ($("#radioB").is(":checked")) {
//            tempJawaban[indexSoal] = 2;
//        }
//        else if ($("#radioC").is(":checked")) {
//            tempJawaban[indexSoal] = 3;
//        }
//        else if ($("#radioD").is(":checked")) {
//            tempJawaban[indexSoal] = 4;
//        }
//        else if ($("#radioE").is(":checked")) {
//            tempJawaban[indexSoal] = 5;
//        }
//    });

    $("#button_next").click(function(){
        if(indexSoal + 1 < jmlSoal) {
            // Save answer
            if ($("#radioA").is(":checked")) {
                tempJawaban[indexSoal] = 1;
            }
            else if ($("#radioB").is(":checked")) {
                tempJawaban[indexSoal] = 2;
            }
            else if ($("#radioC").is(":checked")) {
                tempJawaban[indexSoal] = 3;
            }
            else if ($("#radioD").is(":checked")) {
                tempJawaban[indexSoal] = 4;
            }
            else if ($("#radioE").is(":checked")) {
                tempJawaban[indexSoal] = 5;
            }

            indexSoal += 1;
        }
        else
            return;

        // Check if there is image available
        if(listSoal[indexSoal].pathGambar != "/"){
            $("#gambar").show();
            $("#gambar").attr("src", listSoal[indexSoal].pathGambar);
        }
        else {
            $("#gambar").hide();
        }
        $("#nomersoal").text(indexSoal + 1);
        $("#soal").text(listSoal[indexSoal].soal);
        $("#jwb_a").text("A. " + listSoal[indexSoal].jwbA);
        $("#jwb_b").text("B. " + listSoal[indexSoal].jwbB);
        $("#jwb_c").text("C. " + listSoal[indexSoal].jwbC);
        $("#jwb_d").text("D. " + listSoal[indexSoal].jwbD);
        $("#jwb_e").text("E. " + listSoal[indexSoal].jwbE);

        // Determine which radio button should be checked
        // No radio button checked yet (Initialize as no answer
//            $("#radioA").attr('checked', false);
//            $("#radioB").attr('checked', false);
//            $("#radioC").attr('checked', false);
//            $("#radioD").attr('checked', false);
//            $("#radioE").attr('checked', false);

        // If saved answer is A
        if(tempJawaban[indexSoal] == 1){
            $("#radioA").attr('checked', true); // Checked for A answer
        }

        // If saved answer is B
        else if(tempJawaban[indexSoal] == 2){
            $("#radioB").attr('checked', true); // Checked for B answer
        }

        // If saved answer is C
        else if(tempJawaban[indexSoal] == 3){
            $("#radioC").attr('checked', true); // Checked for C answer
        }

        // If saved answer is D
        else if(tempJawaban[indexSoal] == 4){
            $("#radioD").attr('checked', true); // Checked for D answer
        }

        // If saved answer is E
        else if(tempJawaban[indexSoal] == 5){
            $("#radioE").attr('checked', true); // Checked for E answer
        }

        else {
            $("#radioA").attr('checked', false);
            $("#radioB").attr('checked', false);
            $("#radioC").attr('checked', false);
            $("#radioD").attr('checked', false);
            $("#radioE").attr('checked', false);
        }

        // Pagination number
        $("#id_soal").value = indexSoal + 1;
    });

    $("#button_prev").click(function(){
        if(indexSoal - 1 >= 0) {
            // Save answer
            if ($("#radioA").is(":checked")) {
                tempJawaban[indexSoal] = 1;
            }
            else if ($("#radioB").is(":checked")) {
                tempJawaban[indexSoal] = 2;
            }
            else if ($("#radioC").is(":checked")) {
                tempJawaban[indexSoal] = 3;
            }
            else if ($("#radioD").is(":checked")) {
                tempJawaban[indexSoal] = 4;
            }
            else if ($("#radioE").is(":checked")) {
                tempJawaban[indexSoal] = 5;
            }

            indexSoal -= 1;
        }
        else
            return;

        // Check if there is image available
        if(listSoal[indexSoal].pathGambar != "/"){
            $("#gambar").show();
            $("#gambar").attr("src", listSoal[indexSoal].pathGambar);
        }
        else {
            $("#gambar").hide();
        }
        $("#nomersoal").text(indexSoal + 1);
        $("#soal").text(listSoal[indexSoal].soal);
        $("#jwb_a").text("A. " + listSoal[indexSoal].jwbA);
        $("#jwb_b").text("B. " + listSoal[indexSoal].jwbB);
        $("#jwb_c").text("C. " + listSoal[indexSoal].jwbC);
        $("#jwb_d").text("D. " + listSoal[indexSoal].jwbD);
        $("#jwb_e").text("E. " + listSoal[indexSoal].jwbE);

        // Determine which radio button should be checked
        // No radio button checked yet (Initialize as no answer
//        $("#radioA").attr('checked', false);
//        $("#radioB").attr('checked', false);
//        $("#radioC").attr('checked', false);
//        $("#radioD").attr('checked', false);
//        $("#radioE").attr('checked', false);

        // If saved answer is A
        if(tempJawaban[indexSoal] == 1){
            alert("Radio A Checked");
            $("#radioA").attr('checked', true); // Checked for A answer
        }

        // If saved answer is B
        else if(tempJawaban[indexSoal] == 2){
            alert("Radio B Checked");
            $("#radioB").attr('checked', true); // Checked for B answer
        }

        // If saved answer is C
        else if(tempJawaban[indexSoal] == 3){
            alert("Radio C Checked");
            $("#radioC").attr('checked', true); // Checked for C answer
        }

        // If saved answer is D
        else if(tempJawaban[indexSoal] == 4){
            alert("Radio D Checked");
            $("#radioD").attr('checked', true); // Checked for D answer
        }

        // If saved answer is E
        else if(tempJawaban[indexSoal] == 5){
            alert("Radio E Checked");
            $("#radioE").attr('checked', true); // Checked for E answer
        }

        else {
            $("#radioA").attr('checked', false);
            $("#radioB").attr('checked', false);
            $("#radioC").attr('checked', false);
            $("#radioD").attr('checked', false);
            $("#radioE").attr('checked', false);
        }

        // Pagination number
        $("#id_soal").value = indexSoal + 1;
    });

    // Score each subjects
    var nilai;
    $("#button_submit").click(function () {
        // Save current answer
        if ($("#radioA").is(":checked")) {
            tempJawaban[indexSoal] = 1;
        }
        else if ($("#radioB").is(":checked")) {
            tempJawaban[indexSoal] = 2;
        }
        else if ($("#radioC").is(":checked")) {
            tempJawaban[indexSoal] = 3;
        }
        else if ($("#radioD").is(":checked")) {
            tempJawaban[indexSoal] = 4;
        }
        else if ($("#radioE").is(":checked")) {
            tempJawaban[indexSoal] = 5;
        }

        var jwbBenar = 0;
        for(var i=0;i<jmlSoal;i++){
            if(listSoal[i].kunciJwb == tempJawaban[i]){
                jwbBenar++;
            }
        }

        // Final score
        nilai = jwbBenar / jmlSoal * 100;

        alert("Id mapel = " + ${idMapel} +
                        "\nTipe Soal = " + ${tipeSoal} +
                        "\nNilai = " + jwbBenar + " / " + jmlSoal + " * " + 100 + " = " + nilai);
    });
</script>
</body>

</html>