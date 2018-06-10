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
	   <div class="ui grid teal inverted segment">
			<div class="seven wide column">
					<div class="ui action input"  style="width: 550px;">
						<input  class="ui  input" type="file" name="photo"/>

					</div>
				</div>
				<div class="two wide column">
						<Button class="ui active teal button" type="submit">
							<i></i> 一括登録
						</Button>
				</div>
			</div>
		
		<label class="ui label" style="text-align: left" ><h3>登録結果一覧</h3></label>
				<table class="ui celled table" style="margin-top: 5px">
					<tbody>
					<tr bgcolor="#00B5AB">
						<th width="50%" style="text-align: center; color: white">ファイル名</th>
						<th width="20%" style="text-align: center; color: white">日付</th>
						<th width="20%" style="text-align: center; color: white">名前</th>
						<th width="10%" style="text-align: center; color: white">結果</th>
					</tr>
					<tr>
							<td id= "week0">2018-09-01_ユーザAAAの診断結果</td>
							<td >2018-11-01</td>
							<td >ユーザ名前</td>
							<td >成功</td>
						</tr>
						<tr>
							<td id= "week1">2018-09-01_ユーザAAAの診断結果</td>
							<td >2018-11-01</td>
							<td >ユーザ名前</td>
							<td >成功</td>
						</tr>
						<tr>
							<td id= "week2">2018-09-01_ユーザAAAの診断結果</td>
							<td >2018-11-01</td>
							<td >ユーザ名前</td>
							<td >成功</td>
						</tr>
					</tbody>
				</table>
	</div>

</body>
</html>
