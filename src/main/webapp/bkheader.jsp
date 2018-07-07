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
	<div class="ui inverted blue menu" style='margin-top:auto;font-size: 12.0pt'>
		<a class="active item" href=bkaccountlist.jsp><b>顧客一覧</b></a> <a
			class="item" href=bkimportinfo.jsp><b>診断情報一括登録</b></a> <a
			class="item" href=bknextplan.jsp><b>次回検査</b></a>
			
			<div class="right menu">
			<a class="item"  onclick="logout()"><b>ログアウト</b></a>
			
			<div id="almodal" class="ui small test modal transition hidden">
					<div class="header">ログアウト</div>
					<div class="content">
						<p>ログアウトしてよろしいですか</p>
					</div>
					<div class="actions">
						<div class="ui negative button">いいえ</div>
						<div class="ui positive right labeled icon button">
							はい <i class="checkmark icon"></i>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					function logout() {
						$('#almodal').modal({
							closable : false,
							onApprove : function() {
								window.location.href = "logout.do";
							}

						}).modal('show');
					}
				</script>
				
		</div>
	</div>
</body>
</html>
