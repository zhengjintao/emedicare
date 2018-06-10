<html>
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>

<body>
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
        <jsp:include page="bkheader.jsp"/>
		<table class="ui celled table" style="margin-top: 5px">
			<tbody>
				<tr bgcolor="#FAFAFA" height="30px">
					<th width="60%" style="text-align: center">名前</th>
					<th width="20%" style="text-align: center">診査履歴数</th>
					<th width="20%" style="text-align: center">通院記録数</th>
				</tr>
				<tr>
					<td id="week0"><a href=bkhistorylist.do>本田慶応</a></td>
					<td><a href=bkhistorylist.do>3</a></td>
					<td><a href=bkhistorylist.do>2</a></td>
				</tr>
				<tr>
					<td id="week1">坂本龍馬</td>
					<td>9</td>
					<td>9</td>
				</tr>
				<tr>
					<td id="week2">安倍晋三</td>
					<td>9</td>
					<td>0</td>
				</tr>
				<tr>
					<td id="week3">田中小次郎</td>
					<td>0</td>
					<td>0</td>
				</tr>
				<tr>
					<td id="week4">松田平助</td>
					<td>9</td>
					<td>2</td>
				</tr>
				<tr>
					<td id="week5">佐本馬子</td>
					<td>9</td>
					<td>5</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>
