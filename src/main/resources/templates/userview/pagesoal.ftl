<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Soal</title>
</head>
<body>
	<div class="soal" id="soal">1. ${soal.soal}</div>
	<div class="pilihan" id="jwb_a">A. ${soal.jwb_a}</div>
	<div class="pilihan" id="jwb_b">B. ${soal.jwb_b}</div>
	<div class="pilihan" id="jwb_c">C. ${soal.jwb_c}</div>
	<div class="pilihan" id="jwb_d">D. ${soal.jwb_d}</div>
	<div class="pilihan" id="jwb_e">E. ${soal.jwb_e}</div>
	<button id="button_next">Next</button>
</body>
	<script type="text/javascript"
    	src="/jquery.min.js"></script>
    <script>
    	$("#button_next").click(function(){
    		$.ajax({
    			url:"/soaljson/2",
    			method:"GET",
    			success:function(response){
    				console.log(response);
    				$("#soal").text("2. " + response.soal);
    				$("#jwb_a").text("A. " + response.jwb_a);
    				$("#jwb_b").text("B. " + response.jwb_b);
    				$("#jwb_c").text("C. " + response.jwb_c);
    				$("#jwb_d").text("D. " + response.jwb_d);
    				$("#jwb_e").text("E. " + response.jwb_e);
    			}
    		});
    	});
    </script>
</html>