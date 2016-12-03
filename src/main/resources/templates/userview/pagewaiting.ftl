<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>${nama}</div>
	<div>${nidn}</div>
	<div>Current time : ${currenttime!"Time is null"}</div>
	<div id="timecountdown"></div>
	<div><a href="/userview/soal">Mulai Ujian</a></div>
	<div><a href="/">Keluar</div>
</body>

<script type="text/javascript"
    src="jquery.min.js"></script>
<script type="text/javascript"
    src="jquery.countdown.min.js"></script>
<script type="text/javascript">
	$("#timecountdown")
		.countdown("${currenttime}", function(event) {
	$(this).text(
		event.strftime('%D days %H:%M:%S')
	);
 });
</script>

</html>