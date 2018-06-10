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
		<div class="ui inverted blue menu" style='font-size: 12.0pt'>
			<a class="item" href=bkimportinfo.jsp><b>診断情報一括登録</b></a> 
			<a class="active item" href=bkaccountlist.jsp><b>顧客一覧</b></a> 
			<a class="item" href=bkimportinfo.jsp><b>次回検査</b></a>
			<div class="right menu">
				<a class="item"><b>ログイン</b></a> 
				<a class="item"><b>ヘルプ</b></a>
			</div>
		</div>		
		<label class="ui label" style="text-align: left" ><h3>顧客一覧</h3></label>
				<table class="ui celled table" style="margin-top: 5px">
					<tbody>
					<tr bgcolor="#00B5AB">
						<th width="80%" style="text-align: center; color: white">名称</th>
						<th width="20%" style="text-align: center; color: white">履歴数</th>
					</tr>
					<tr>
							<td id= "week0"><a href=bkhistorylist.jsp>ユーザ１</a></td>
							<td >0</td>
						</tr>
						<tr>
							<td id= "week1">ユーザ１</td>
							<td >99</td>
						</tr>
						<tr>
							<td id= "week2">ユーザ１</td>
							<td >99</td>
						</tr>
						<tr>
							<td id= "week3">ユーザ１</td>
							<td >99</td>
						</tr>
						<tr>
							<td id= "week4">ユーザ１</td>
							<td >99</td>
						</tr>
						<tr>
							<td id= "week5">ユーザ１</td>
							<td >99</td>
						</tr>
						<tr>
							<td id= "week6">ユーザ１</td>
							<td >99</td>
						</tr>
					</tbody>
				</table>
	</div>

</body>
</html>
