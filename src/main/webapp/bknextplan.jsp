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
		<jsp:include page="bkheader.jsp" />
		<div class="ui grid">
			<div class="column">
				<div class="ui breadcrumb">
					<a class="section"><h4>顧客一覧</h4></a> <i
						class="right angle icon divider"></i>
					<div class="active section">
						<h4>ユーザ名前</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="ui section divider" style="margin-top: 5px;"></div>
		<h3 class="ui top attached header">基本情報</h3>
		<div class="ui attached segment" style="margin-top: auto;">
			<div class="ui grid">
				<div class="eight wide column">
					<div class="ui middle aligned divided list">
						<div class="item">
							<div class="ui labeled input">
								<div class="ui label">名前</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value=<%=(String) request.getAttribute("username")%>>
							</div>
						</div>
					</div>
				</div>
				<div class="eight wide column">
					<div class="ui middle aligned divided list">
						<div class="item">
							<div class="ui labeled input">
								<div class="ui label">年齢</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value=<%=(String) request.getAttribute("username")%>>
							</div>
						</div>
					</div>
				</div>
				<div class="eight wide column">
					<div class="ui middle aligned divided list">
						<div class="item">
							<div class="ui labeled input">
								<div class="ui label">性別</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value=<%=(String) request.getAttribute("username")%>>
							</div>
						</div>
					</div>
				</div>
				<div class="eight wide column">
					<div class="ui middle aligned divided list">
						<div class="item">
							<div class="ui labeled input">
								<div class="ui label">電話番号</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value=<%=(String) request.getAttribute("username")%>>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<h3 class="ui top attached header">履歴一覧</h3>

		<div class="ui attached segment">
			<table class="ui celled table" style="margin-top: auto">
				<tbody>

					<tr>
						<td><a href=bkdetailinfo.jsp>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3 class="ui top attached header">通院履歴</h3>
		<div class="ui attached segment">
			<table class="ui celled table" style="margin-top: auto">
				<tbody>

					<tr>
						<td><a href=bkdetailinfo2.jsp>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a href=bkdetailinfo2.jsp>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a href=bkdetailinfo2.jsp>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a href=bkdetailinfo2.jsp>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
					<tr>
						<td><a>2018-09-01_ユーザAAAの診断結果</a></td>
						<td>2018-09-01</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
