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
					<a class="section"><h4>次回検査</h4></a> <i
						class="right angle icon divider"></i>
				</div>
			</div>
		</div>
		<div class="ui section divider" style="margin-top: 5px;"></div>
		<h3 class="ui top attached header">基本情報</h3>
		<div class="ui attached segment" style="margin-top: auto;">
			<div class="ui middle aligned divided list">
				<div class="item">
					<div class="ui labeled input">
						<div class="ui label">名前</div>
						<select class="ui dropdown">
							<option value="1">ユーザ１</option>
							<option value="0">ユーザ２</option>
						</select>
					</div>
				</div>
			</div>
			<div class="ui middle aligned divided list">
				<div class="item">
					<div class="ui labeled input">
						<div class="ui label">日付</div>
						<input type="date" value="2018-10-10">
					</div>
				</div>
			</div>
			<div class="ui middle aligned divided list">
				<div class="item">
					<div class="ui labeled input">
						<div class="ui label">病院</div>
						<input id="eusername" name="eusername" type="text"
							value="蕨第三病院"
							placeholder="必须（请使用真名）">
					</div>
				</div>　
			</div>
			<div class="ui middle aligned divided list">
				<div class="item">
			     <button class="ui basic submit button"><i class="icon user"></i> 登録
			     </button>
			     </div>
			</div>
		</div>
	</div>
</body>
</html>
