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
		<div class="ui grid">
			<div class="column">
				<div class="ui breadcrumb">
					<a class="section" href="bkaccountlist.do"><h4>顧客一覧</h4></a> <i
						class="right angle icon divider"></i> 
					<a class="section" href="bkhistorylist.do"><h4>本田慶応</h4></a>
					<i class="right angle icon divider"></i>
					<div class="active section">
						<h4>通院記録1</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="ui section divider" style="margin-top: 5px;margin-bottom:0px"></div>
		<h3 class="ui top attached header" style="margin-top: 10px;">通院情報</h3>
		<div class="ui attached segment" style="margin-top: auto;">
			<div class="ui grid">
				<div class="eight wide column">
					<div class="ui middle aligned divided list">
						<div class="item">
							<div class="ui labeled input">
								<div class="ui label">日付</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value="2018-10-11">
							</div>
						</div>
					</div>
				</div>
				<div class="eight wide column">
					<div class="ui middle aligned divided list">
						<div class="item">
							<div class="ui labeled input">
								<div class="ui label">原因</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value="感冒发烧">
							</div>
						</div>
					</div>
				</div>
				<div class="eight wide column">
					<div class="ui middle aligned divided list">
						<div class="item">
							<div class="ui labeled input">
								<div class="ui label">期間</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value="6天">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
