<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  list.dt_02 = new Array();
  list.dt_03 = new Array();
  list.dt_04 = new Array();
  list.dt_05 = new Array();
  list.dt_06 = new Array();
  list.dt_07 = new Array();
  list.dt_08 = new Array();  
  list.dt_09 = new Array();
  list.dt_10 = new Array();
  list.dt_11 = new Array();
  list.dt_12 = new Array();
  list.dt_13 = new Array();
  list.dt_14 = new Array();
  list.dt_15 = new Array();
  list.dt_16 = new Array();
  list.dt_17 = new Array();
  list.dt_18 = new Array();
  list.dt_19 = new Array();
  list.dt_20 = new Array();
  list.dt_21 = new Array();
  list.dt_22 = new Array();
  list.dt_23 = new Array();
  
  <%List<String> dataList01 = (List<String>) request.getAttribute("detailDataList01");%>;
  <%List<String> dataList02 = (List<String>) request.getAttribute("detailDataList02");%>;
  <%List<String> dataList03 = (List<String>) request.getAttribute("detailDataList03");%>;
  <%List<String> dataList04 = (List<String>) request.getAttribute("detailDataList04");%>;
  <%List<String> dataList05 = (List<String>) request.getAttribute("detailDataList05");%>;
  <%List<String> dataList06 = (List<String>) request.getAttribute("detailDataList06");%>;
  <%List<String> dataList07 = (List<String>) request.getAttribute("detailDataList07");%>;
  <%List<String> dataList08 = (List<String>) request.getAttribute("detailDataList08");%>;
  <%List<String> dataList09 = (List<String>) request.getAttribute("detailDataList09");%>;
  <%List<String> dataList10 = (List<String>) request.getAttribute("detailDataList10");%>;
  <%List<String> dataList11 = (List<String>) request.getAttribute("detailDataList11");%>;
  <%List<String> dataList12 = (List<String>) request.getAttribute("detailDataList12");%>;
  <%List<String> dataList13 = (List<String>) request.getAttribute("detailDataList13");%>;
  <%List<String> dataList14 = (List<String>) request.getAttribute("detailDataList14");%>;
  <%List<String> dataList15 = (List<String>) request.getAttribute("detailDataList15");%>;
  <%List<String> dataList16 = (List<String>) request.getAttribute("detailDataList16");%>;
  <%List<String> dataList17 = (List<String>) request.getAttribute("detailDataList17");%>;
  <%List<String> dataList18 = (List<String>) request.getAttribute("detailDataList18");%>;
  <%List<String> dataList19 = (List<String>) request.getAttribute("detailDataList19");%>;
  <%List<String> dataList20 = (List<String>) request.getAttribute("detailDataList20");%>;
  <%List<String> dataList21 = (List<String>) request.getAttribute("detailDataList21");%>;
  <%List<String> dataList22 = (List<String>) request.getAttribute("detailDataList22");%>;
  <%List<String> dataList23 = (List<String>) request.getAttribute("detailDataList23");%>;
  
  <%for (int i = 0; i < dataList01.size(); i++) {%>  
       list.dt_01[<%=i%>] = "<%=dataList01.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList02.size(); i++) {%>  
	   list.dt_02[<%=i%>] = "<%=dataList02.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList03.size(); i++) {%>  
 	   list.dt_03[<%=i%>] = "<%=dataList03.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList04.size(); i++) {%>  
  	   list.dt_04[<%=i%>] = "<%=dataList04.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList05.size(); i++) {%>  
   	   list.dt_05[<%=i%>] = "<%=dataList05.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList06.size(); i++) {%>  
       list.dt_06[<%=i%>] = "<%=dataList06.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList07.size(); i++) {%>  
       list.dt_07[<%=i%>] = "<%=dataList07.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList08.size(); i++) {%>  
       list.dt_08[<%=i%>] = "<%=dataList08.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList09.size(); i++) {%>  
 	   list.dt_09[<%=i%>] = "<%=dataList09.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList10.size(); i++) {%>  
 	   list.dt_10[<%=i%>] = "<%=dataList10.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList11.size(); i++) {%>  
 	   list.dt_11[<%=i%>] = "<%=dataList11.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList12.size(); i++) {%>  
       list.dt_12[<%=i%>] = "<%=dataList12.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList13.size(); i++) {%>  
  	   list.dt_13[<%=i%>] = "<%=dataList13.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList14.size(); i++) {%>  
	   list.dt_14[<%=i%>] = "<%=dataList14.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList15.size(); i++) {%>  
	   list.dt_15[<%=i%>] = "<%=dataList15.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList16.size(); i++) {%>  
      list.dt_16[<%=i%>] = "<%=dataList16.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList17.size(); i++) {%>  
      list.dt_17[<%=i%>] = "<%=dataList17.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList18.size(); i++) {%>  
      list.dt_18[<%=i%>] = "<%=dataList18.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList19.size(); i++) {%>  
  	   list.dt_19[<%=i%>] = "<%=dataList19.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList20.size(); i++) {%>  
  	   list.dt_20[<%=i%>] = "<%=dataList20.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList21.size(); i++) {%>  
  	   list.dt_21[<%=i%>] = "<%=dataList21.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList22.size(); i++) {%>  
  	   list.dt_22[<%=i%>] = "<%=dataList22.get(i)%>";
  <%}%>
  <%for (int i = 0; i < dataList23.size(); i++) {%>  
  	   list.dt_23[<%=i%>] = "<%=dataList23.get(i)%>";
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
	   $("#errmsg").html("请稍等，保存中...");
		$('#cmodal').modal({
			closable : false
		}).modal('show')
	   $.ajax({
		    url: "bkdetailinfo.do?mode=save",
		    type: "POST",
		    datatype:'json',
		    data:{
		    	dt_01:list.dt_01,
		    	dt_02:list.dt_02,
		    	dt_03:list.dt_03,
		    	dt_04:list.dt_04,
		    	dt_05:list.dt_05,
		    	dt_06:list.dt_06,
		    	dt_07:list.dt_07,
		    	dt_08:list.dt_08,
		    	dt_09:list.dt_09,
		    	dt_10:list.dt_10,
		    	dt_11:list.dt_11,
		    	dt_12:list.dt_12,
		    	dt_13:list.dt_13,
		    	dt_14:list.dt_14,
		    	dt_15:list.dt_15,
		    	dt_16:list.dt_16,
		    	dt_17:list.dt_17,
		    	dt_18:list.dt_18,
		    	dt_19:list.dt_19,
		    	dt_20:list.dt_20,
		    	dt_21:list.dt_21,
		    	dt_22:list.dt_22,
		    	dt_23:list.dt_23
		    },
		    success: function(data) {
		    	$("#errmsg").html("保存完成");
		    }
		});
   };
   
   list.deleteData = function() {
	   $.ajax({
		    url: "bkdetailinfo.do?mode=delete",
		    type: "POST",
		    datatype:'json',
		    data:{
		    	dt_01:list.dt_01
		    },
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
	min-width:1050px;
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
	<div style="width: 80%; margin-left: auto; margin-right: auto;margin-top:-10px;">
		<jsp:include page="bkheader.jsp" />
		<div class="ui equal width grid">
			<div class="column">
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
			<div class="column" style="text-align:right;margin-top:-10px">
				<div class="ui active blue button" style="margin-bottom:0px" ng-click="list.saveData()" >
					<i class="save icon"></i>保存
				</div>
				<div class="ui active blue button" style="margin-bottom:0px" ng-click = "list.deleteData()" >
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
		<jsp:include page="bkdetailinfo_14.jsp" />
		<jsp:include page="bkdetailinfo_15.jsp" />
		<jsp:include page="bkdetailinfo_16.jsp" />
		<jsp:include page="bkdetailinfo_17.jsp" />
		<jsp:include page="bkdetailinfo_18.jsp" />
		<jsp:include page="bkdetailinfo_19.jsp" />		
		<jsp:include page="bkdetailinfo_20.jsp" />		
		<jsp:include page="bkdetailinfo_21.jsp" />	
		<jsp:include page="bkdetailinfo_22.jsp" />
		<jsp:include page="bkdetailinfo_23.jsp" />
	</div>
</body>
</html>
