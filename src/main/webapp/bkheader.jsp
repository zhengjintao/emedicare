<script type="text/javascript">
$( document ).ready(function(){
	var activeid = '#item01';
	if(typeof(activeitem) != "undefined"){
		activeid = activeitem;
	}
	$(activeid).addClass("active");
});

</script>
<div class="ui inverted blue menu"
	style='margin-top: auto; font-size: 12.0pt'>
	<a id="item01" class="item" href=bkaccountlist.do><b>顧客一覧</b></a> 
	<a id="item02" class="item" href=bkimportinfo.do><b>診断情報一括登録</b></a>
	<a id="item03" class="item" href=bknextplan.do><b>次回検査</b></a>

	<div class="right menu">
		<a class="item" onclick="logout()"><b>ログアウト</b></a>

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