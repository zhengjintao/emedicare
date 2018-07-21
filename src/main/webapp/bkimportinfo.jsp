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
  var app = angular.module('listApp',[]);
  app.controller('ListController', function($scope,$http,transFormFactory) {
	  var list = this;
	  list.errmessage ="";
	});
  
  function checkdate(){
		var filepath = $("#filepath").val();
		if (filepath == null || filepath == "undefine" || filepath.length == 0) {
	    	$("#errmsg").html("文件地址必须输入");
			$('#cmodal').modal({
				closable : false

			}).modal('show');
	        return false;  
		}
  }
</script>
<body>
	<script type="text/javascript">
	$(document).ready(function() {
		$('.ui.accordion').accordion();
		
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
		<form action="./bkimportinfo.do" method="post"
			onsubmit="return checkdate();">
			<div class="ui fluid action input">
					<input class="ui input" type="file" id="filepath" name="filepath" />
					<button class="ui button">
						一括登録
					</button>
				</div>
		</form>
		<label class="ui label" style="text-align: left"><h3>登録結果一覧</h3></label>
		<table class="ui unstackable celled structured table" style="margin-top: 5px">
			<tbody>
				<tr bgcolor="#FAFAFA">
					<th width="50%" style="text-align: center;">ファイル名</th>
					<th width="20%" style="text-align: center;">日付</th>
					<th width="20%" style="text-align: center;">名前</th>
					<th width="10%" style="text-align: center;">結果</th>
				</tr>
				<%
					List<String[]> imoprthist = (List<String[]>) request.getAttribute("imoprthist");
					for (String[] each : imoprthist) {
						out.print("<tr>");
						out.print("<td>" + each[2] + "</td>");
						out.print("<td >" + each[3] + "</td>");
						out.print("<td >" + each[1] + "</td>");
						out.print("<td >" + each[4] + "</td>");
						out.print("</tr>");
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>
