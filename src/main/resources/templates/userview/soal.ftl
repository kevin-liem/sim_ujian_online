<html>
<head>
	 <title>Ujian Online</title>
	 <style type="text/css">
		body{
			margin: 0;
			height: 100%;
			overflow: hidden;
		}
		#header {
			background-color:#CCCCFF;
			color:black;
			text-align:left;
			padding:1px;
		}
		#h1{
			color : #032FFF;
			font-size : 10px;
			line-height :1px
		   }
		#h2{
			color : #032FFF;
			font-size : 8px;
		}
		#h3{
			color : #032FFF;
			font-size : 5px;
		}
		#nav {
			line-height:30px;
			background-color:#eeeeee;
			height:100%;
			width:60%;
			float:left;
			padding:5px;
		}
		#section {
			float:left;
			width:31%;
			height: 100%;
			
		}
		#footer {
			background-color: #CCCC00;
			clear:both;
			text-align:center;
			padding:8px;
			height:35px;
		}
		a:link{
			background-color:#F0F0F0;
			color:#000099;
			text-decoration:none;
			font-size:15px;
		}
		a:hover{
			background-color:#000000;
			color:#FFFFFF;
			text-decoration:underline;
			font-size:17px;
		}
		.button-bottom{
			position: absolute;
			bottom: 0;
			display:inline-table;
			margin-left:350px;
		}
		.button-bottom2{
			position: absolute;
			bottom: 0;
			margin-left:450px;
			display:inline-table;
		}
</style> 
</head>
<body>

	<div id="header">
		<center><h1><p>UJIAN ONLINE SMA </p></h1></center>
	</div>
	
	<div id="footer">
		
	</div>
	<div id="content">
		<div id="nav">
            <div class="soal" id="gambar">${soal.id_soal} <#if soal.path_gmb??><img src="/${soal.path_gmb}" /></#if></div>
            <div class="soal" id="soal">${soal.soal}</div>
		</div>
		<div id="section">
			<form>
				<input type="radio" name="jawab" value="a"><span id="jwb_a">A. ${soal.jwb_a}</span><br>
				<input type="radio" name="jawab" value="b"><span id="jwb_b">B. ${soal.jwb_b}</span><br>
				<input type="radio" name="jawab" value="c"><span id="jwb_c">C. ${soal.jwb_c}</span><br>
				<input type="radio" name="jawab" value="d"><span id="jwb_d">D. ${soal.jwb_d}</span><br>
				<input type="radio" name="jawab" value="e"><span id="jwb_e">E. ${soal.jwb_e}</span><br>
				<input type="submit" class="button-bottom" value="Back">
				<input type="submit" class="button-bottom2" value="Next">
			</form>

            <button id="button_prev">Prev</button>
            <span id="id_soal">1</span>
            <button id="button_next">Next</button>
		</div>
	</div>
	<div id="footer">
		
	</div>
</body>

<script type="text/javascript"
        src="/jquery.min.js"></script>
<script>
    var id_soal = 1;
    $("#button_next").click(function(){
        if(id_soal + 1 < 11)
            id_soal += 1;
        else
            return;

        $.ajax({
            url:"/soaljson/" + id_soal,
            method:"GET",
            success:function(response){
                console.log(response);
                $("#gambar").text(id_soal + ". " + response.path_gmb);
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
                $("#gambar").text(id_soal + ". " + response.path_gmb);
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