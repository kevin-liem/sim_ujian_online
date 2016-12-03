<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>NIDN</th>
			<th>Nama</th>
			<th>Bhs Indonesia</th>
			<th>Bhs Inggris</th>
			<th>Matematika</th>
			<th>Danem</th>
		</tr>
		<#list listsiswa as siswa>
			<tr>
				<td>${siswa.nidn}</td>
				<td>${siswa.nama}</td>
				<td>${siswa.nilai.bhsIndonesia}</td>
				<td>${siswa.nilai.bhsInggris}</td>
				<td>${siswa.nilai.matematika}</td>
				<td>${siswa.nilai.danem}</td>
			</tr>
		</#list>
	</table>
</body>
</html>