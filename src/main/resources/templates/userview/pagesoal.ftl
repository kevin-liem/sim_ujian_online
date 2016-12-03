<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Soal</title>
</head>
<body>
	<div class="soal" id="soal">${soal.id_soal} <#if soal.path_gmb??><img src="/${soal.path_gmb}" /></#if></div>
	<div class="soal" id="soal">${soal.soal}</div>
	<div class="pilihan" id="jwb_a">A. ${soal.jwb_a}</div>
	<div class="pilihan" id="jwb_b">B. ${soal.jwb_b}</div>
	<div class="pilihan" id="jwb_c">C. ${soal.jwb_c}</div>
	<div class="pilihan" id="jwb_d">D. ${soal.jwb_d}</div>
	<div class="pilihan" id="jwb_e">E. ${soal.jwb_e}</div>
	<button id="button_prev">Prev</button>
	<span id="id_soal">1</span>
	<button id="button_next">Next</button>
</body>
	<script type="text/javascript"
    	src="/jquery.min.js"></script>
    <script>
    	var id_soal = 1;
    	$("#button_next").click(function(){
			if(id_soal + 1 < 21)
	   			id_soal += 1;
	   		else
	   			return;

    		$.ajax({
    			url:"/soaljson/" + id_soal,
    			method:"GET",
    			success:function(response){
    				console.log(response);
                    $("#soal").text(id_soal + ". " + response.path_gmb);
    				$("#soal").text(response.soal);
    				$("#jwb_a").text("A. " + response.jwb_a);
    				$("#jwb_b").text("B. " + response.jwb_b);
    				$("#jwb_c").text("C. " + response.jwb_c);
    				$("#jwb_d").text("D. " + response.jwb_d);
    				$("#jwb_e").text("E. " + response.jwb_e);
    				
    				$("#id_soal").text(id_soal);
    			}
    		});
    	});
    	$("#button_prev").click(function(){
    		if(id_soal - 1 > 0)
	   			id_soal -= 1;
	   		else
	   			return;
	   			
    		$.ajax({
    			url:"/soaljson/" + id_soal,
    			method:"GET",
    			success:function(response){
    				console.log(response);
                    $("#soal").text(id_soal + ". " + response.path_gmb);
                    $("#soal").text(response.soal);
    				$("#jwb_a").text("A. " + response.jwb_a);
    				$("#jwb_b").text("B. " + response.jwb_b);
    				$("#jwb_c").text("C. " + response.jwb_c);
    				$("#jwb_d").text("D. " + response.jwb_d);
    				$("#jwb_e").text("E. " + response.jwb_e);
    				
    				$("#id_soal").text(id_soal);
    			}
    		});
    	});
    </script>
</html>