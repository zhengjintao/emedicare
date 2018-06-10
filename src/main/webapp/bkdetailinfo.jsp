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
				<a class="item"><b>ログイン</b></a> <a class="item"><b>ヘルプ</b></a>
			</div>
		</div>
        <div>
		<div class="ui grid">
			<div class="four column row">
				<div class="left floated column">
					<div class="ui breadcrumb">
						<a class="section"><h3>顧客一覧</h3></a> <i
							class="right angle icon divider"></i> <a class="section"><h3>履歴一覧(ユーザ名前)</h3></a>
						<i class="right angle icon divider"></i>
						<div class="active section">
							<h3>詳細情報</h3>
						</div>
					</div>
				</div>
				<div class="right floated column">
					<Button class="ui active teal button" type="submit">
						<i></i>編集
					</Button>
				</div>
			</div>
		</div>

		<div class="ui  segment">
			<a class="ui orange  label">基本情報</a>
			<div class="ui grid">
				<div class="eight wide column">
					<div class="item">
						<div class="ui labeled input">
							<label>名称:</label> <label>ユーザ①</label>
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
	</div>
	<div>
		<div class="ui grey inverted segment">
			<a class="ui orange ribbon label">診断情報</a>
			<div class="ui grid">
				<div class="four wide column"></div>
				<div class="four wide column"></div>
				<div class="four wide column"></div>
				<div class="four wide column"></div>
				<div class="two wide column"></div>
				<div class="eight wide column"></div>
				<div class="six wide column"></div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>
