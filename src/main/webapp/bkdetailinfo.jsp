﻿<%@ page import="java.util.List"%>
<html ng-app="listApp">
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script src="angularjs/angular.min.js"></script>
<script type="text/javascript">
  var app = angular.module('listApp',[]);
  
  app.config(function($provide){
          
      $provide.factory("transFormFactory",function(){
          return {
              transForm : function(obj){
                  var str = [];  
                  for(var p in obj){  
                    str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));  
                  } 
                  return str.join("&");  
              }
          };
      });
  });
  
  app.controller('ListController', function($scope,$http,transFormFactory) {
  var list = this;
  list.dt_01 = new Array();
  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList01");%>;
  <%for (int i = 0; i < dataList.size(); i++) {%>  
       list.dt_01[<%=i%>] = "<%=dataList.get(i)%>";
   <%}%>
   
   list.sheets =[
	   {'id' : 'dtl01', 'name': '健診結果報告書１'},
	   {'id' : 'dtl02', 'name': '健診結果報告書２'},
	   {'id' : 'dtl03', 'name': '健診結果報告書３'},
	   {'id' : 'dtl04', 'name': '健診結果報告書４'},
	   {'id' : 'dtl05', 'name': '健診結果報告書５'},
	   {'id' : 'dtl06', 'name': '健診結果報告書６'},
	   {'id' : 'dtl07', 'name': '健診結果報告書７'},
	   {'id' : 'dtl08', 'name': '健診結果報告書８'},
	   {'id' : 'dtl09', 'name': '健診結果報告書９'},
	   {'id' : 'dtl10', 'name': '健診結果報告書１０'},
	   {'id' : 'dtl11', 'name': '健診結果報告書１１'},
	   {'id' : 'dtl12', 'name': '综合判断'},
	   {'id' : 'dtl13', 'name': '检查结果查询表'},
	   {'id' : 'dtl14', 'name': 'SPO 2'},
	   {'id' : 'dtl15', 'name': '甲状腺機能'},
	   {'id' : 'dtl16', 'name': '肿瘤标志物'},
	   {'id' : 'dtl17', 'name': 'ABC検診'},
	   {'id' : 'dtl18', 'name': '血压脉搏检查'},
	   {'id' : 'dtl19', 'name': '骨密度'},
	   {'id' : 'dtl20', 'name': '脳ドック'},
	   {'id' : 'dtl21', 'name': '颈动脉超声波'},
	   {'id' : 'dtl22', 'name': '骨盆MRI'},
	   {'id' : 'dtl23', 'name': '心脏超声波'}
   ]
   
   list.saveData = function() {

	   var json=list.dt_01;
	   $.ajax({
		    url: "bkdetailinfo.do?mode=save",
		    type: "POST",
		    datatype:'json',
		    data:{json:json},
		    success: function(data) {
		    	$("#errmsg").html("保存完成");
				$('#cmodal').modal({
					closable : false
				}).modal('show')
		    }
		});
   };
   
   list.deleteData = function() {
	   var json=list.dt_01;
	   $.ajax({
		    url: "bkdetailinfo.do?mode=delete",
		    type: "POST",
		    datatype:'json',
		    data:{json:json},
		    success: function(data) {
		  	  window.location.href = 'bkhistorylist.do?userid='+ list.dt_01[2];
		    }
		});
   }
   
   list.itemclick = function(eachitem){
	   $('.menu .item').tab('change tab', eachitem.id);
   }
   
   $('.menu .item').tab();
});
</script>

<style type="text/css">
body {
	margin-top: 10px;
	background-color: #FFFFFF;
	min-width:950px;
}

body>.grid {
	height: 100%;
}

footer {
	display: block;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
<body ng-controller="ListController as list">
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
			<p id="errmsg">{list.errmessage}</p>
		</div>
	</div>
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
		<jsp:include page="bkheader.jsp" />
		<div class="ui equal width grid">
			<div class="column" style="margin-top:10px;">
				<div class="ui breadcrumb" style="width:500px">
					<a class="section" href="bkaccountlist.do"><h4>顧客一覧</h4></a> <i
						class="right angle icon divider"></i> <a class="section"
						href="bkhistorylist.do?userid={{list.dt_01[2]}}"><h4>{{list.dt_01[0]}}</h4></a> <i
						class="right angle icon divider"></i>
					<div class="active section">
						<h4><%=(String)request.getAttribute("historyname")%></h4>
					</div>
				</div>
			</div>
			<div class="column"></div>
			<div class="column" style="text-align:right" >
				<div class="ui active teal button" ng-click="list.saveData()" >
					<i class="save icon"></i>保存
				</div>
				<div class="ui active teal button" ng-click = "list.deleteData()" >
					<i class="trash icon"></i>删除
				</div>
			</div>
		</div>
		<div class="ui segment">
		
			<div class="ui celled horizontal list">
			<a class="item" href="#" ng-repeat="eachitem in list.sheets" ng-click="list.itemclick(eachitem)" >{{eachitem.name}}</a>
		</div>
		</div>
		
		<div class="ui section divider"
			style="margin-top: 5px; margin-bottom: 0px"></div>
		<div class="ui top attached tabular menu" style="display:none">
			<a class="item active" ng-repeat="eachitem in list.sheets" data-tab={{eachitem.id}}>{{eachitem.name}}</a>
		</div>
		<jsp:include page="bkdetailinfo_01.jsp" />
		<jsp:include page="bkdetailinfo_02.jsp" />
		<jsp:include page="bkdetailinfo_03.jsp" />
		<jsp:include page="bkdetailinfo_04.jsp" />
		<jsp:include page="bkdetailinfo_05.jsp" />
		<jsp:include page="bkdetailinfo_06.jsp" />
		<jsp:include page="bkdetailinfo_07.jsp" />
		<jsp:include page="bkdetailinfo_08.jsp" />
		<jsp:include page="bkdetailinfo_09.jsp" />		
		<jsp:include page="bkdetailinfo_10.jsp" />		
		<jsp:include page="bkdetailinfo_11.jsp" />	
		<jsp:include page="bkdetailinfo_12.jsp" />
		<jsp:include page="bkdetailinfo_13.jsp" />
	</div>
</body>
</html>
