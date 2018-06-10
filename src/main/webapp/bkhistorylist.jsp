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
		<div class="ui grid">
			<div class="four column row">
				<div class="left floated column">
					<div class="ui breadcrumb">
						<a class="section"><h3>顧客一覧</h3></a> <i
							class="right angle icon divider"></i>
						<div class="active section">
							<h3>履歴一覧(ユーザ名前)</h3>
						</div>
					</div>
				</div>
				<div class="right floated column">
					<Button class="ui active teal button" type="submit">
						<i></i>新規追加
					</Button>
				</div>
			</div>
		</div>

		<table class="ui celled table" style="margin-top: 5px">
					<tbody>
					<tr bgcolor="#00B5AB">
						<th width="50%" style="text-align: center; color: white">履歴名称</th>
						<th width="20%" style="text-align: center; color: white">日付</th>
					</tr>
					<tr>
							<td><a href=bkdetailinfo.jsp>2018-09-01_ユーザAAAの診断結果</a></td>
							<td >2018-09-01</td>
						</tr>
						<tr>
							<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
							<td >2018-09-01</td>
						</tr>
						<tr>
							<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
							<td >2018-09-01</td>
						</tr>
						<tr>
							<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
							<td >2018-09-01</td>
						</tr>
						<tr>
							<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
							<td >2018-09-01</td>
						</tr>
						<tr>
							<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
							<td >2018-09-01</td>
						</tr>
						<tr>
							<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
							<td >2018-09-01</td>
						</tr>
					</tbody>
				</table>
	</div>

</body>
</html>
