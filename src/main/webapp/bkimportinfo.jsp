<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="java.util.List"%>
<html ng-app="listApp">
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">
<script src="angularjs/angular.min.js"></script>
<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>


<script type="text/javascript">
  activeitem="#item02";
  var app = angular.module('listApp',[]);
  app.controller('ListController', function($scope,$http,transFormFactory) {
	  var list = this;
	  list.errmessage ="";
	});
  
  function checkdate1(){
		var filepath = $("#filepath1").val();
		if (filepath == null || filepath == "undefine" || filepath.length == 0) {
	    	$("#errmsg").html("ファイルを選択してください。");
			$('#cmodal').modal({
				closable : false

			}).modal('show');
	        return false;  
		}
		$("#errmsg").html("少々お待ちをください。処理中...");
		$('#cmodal').modal({
			closable : false

		}).modal('show');
  }
  
  function checkdate2(){
		var filepath = $("#filepath2").val();
		if (filepath == null || filepath == "undefine" || filepath.length == 0) {
	    	$("#errmsg").html("画像を選択してください。");
			$('#cmodal').modal({
				closable : false

			}).modal('show');
	        return false;  
		}
		$("#errmsg").html("少々お待ちをください。処理中...");
		$('#cmodal').modal({
			closable : false

		}).modal('show');
}
  
  function ondelete(importno)
  {
  	$.ajax({ 
  	    type: "post", 
  	    url: "bkimportinfo.do?mode=delete&importno=" +importno, 
  	    dataType: "json", 
	    success: function (data) {
	    	$('#infobody').empty();
	    	$('#infobody').append(data.info);
	    }, 
	    error: function() {
	            alert("网络异常，请稍后重试");
	    } 
  	});
  }
</script>
<body>
	<script type="text/javascript">
	$(document).ready(function() {
		var message = "<%=(String) request.getAttribute("errmsg")%>";
		if (message != "null" && message.length > 0) {
			$('#cmodal').modal({
				closable : false

			}).modal('show');
		}});
	</script>
	<div id="cmodal" class="ui small test modal transition hidden">
		<i class="close icon"></i>
		<div class="content">
			<p id="errmsg"><%=(String) request.getAttribute("errmsg")%>
			</p>
		</div>
	</div>

	<div style="width: 80%; margin-left: auto; margin-right: auto;">
		<jsp:include page="bkheader.jsp" />
		<label class="ui label" style="text-align: left;margin-top: 5px"><h3>ファイル登録</h3></label>
		<form action="./bkimportinfo.do?mode=savesheet" enctype="multipart/form-data" method="post" onsubmit="return checkdate1();">
			<div class="ui fluid action input">
					<input class="ui input" type="file" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" id="filepath1" name="filepath1" />
					<button class="ui active blue button"><i class="upload icon"></i>アップロード</button>
				</div>
		</form>
		<label class="ui label" style="text-align: left;margin-top: 5px"><h3>画像登録</h3></label>
		<form action="./bkimportinfo.do?mode=savepic" enctype="multipart/form-data" method="post" onsubmit="return checkdate2();">
			<div class="ui fluid action input">
					<input class="ui input" type="file" accept="image/png,image/jpeg" id="filepath2" name="filepath2" />
					<button class="ui active blue button"><i class="upload icon"></i>アップロード</button>
				</div>
		</form>
		<label class="ui label" style="text-align: left"><h3>登録結果一覧</h3></label>
		<table class="ui unstackable celled structured table"
			style="margin-top: 5px">
			<tr bgcolor="#FAFAFA" height="30px">
				<th width="20%" style="text-align: center;">ファイル名</th>
				<th width="10%" style="text-align: center;">処理者</th>
				<th width="16%" style="text-align: center;">処理時間</th>
				<th width="5%" style="text-align: center;">結果</th>
				<th width="32%" style="text-align: center;">メッセージ</th>
				<th width="4%" style="text-align: center;">ログ<br>削除</th>
			</tr>
			<tbody id="infobody">
				<%
					List<String[]> imoprthist = (List<String[]>) request.getAttribute("imoprthist");
					for (String[] each : imoprthist) {
						out.print("<tr>");
						out.print("<td>" + each[2] + "</td>");
						out.print("<td>" + each[1] + "</td>");
						out.print("<td>" + each[3] + "</td>");
						out.print("<td>" + each[4] + "</td>");
						out.print("<td>" + each[6] + "</td>");
						out.print("<td>");
						out.print("<i class='close icon' onclick='ondelete(" + each[5] + ");'></i>");
						out.print("</td>");
						out.print("</tr>");
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
