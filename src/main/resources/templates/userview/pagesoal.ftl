<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Soal</title>
</head>
<body>
	<div class="soal">1. </div>
	<div class="pilihan" id="pilihanA">A. </div>
	<div class="pilihan" id="pilihanB">B. </div>
	<div class="pilihan" id="pilihanC">C. </div>
	<div class="pilihan" id="pilihanD">D. </div>
	<div class="pilihan" id="pilihanE">E. </div>
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
    				$("#pilihanA").text(response.pilihanA);
    			}
    		});
    	});
    </script>
</html>