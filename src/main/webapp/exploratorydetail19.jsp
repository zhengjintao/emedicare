<%@ page import="java.util.List"%>
<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>診査详细</title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script>
initdata=[];
initdata.name = '<%=request.getAttribute("name")%>';
initdata.historydate = '<%=request.getAttribute("historydate")%>';
initdata.historyno = '<%=request.getAttribute("historyno")%>';
exturl= "historydate=" + initdata.historydate + "&historyno=" + initdata.historyno +"&name=" + initdata.name;
</script>
<script src="assets/js/detailcommon.js"></script>
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
	  list.sheets = constsheets;
	  list.dt_19 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList19");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_19[<%=i%>] = "<%=dataList.get(i)%>";
	   <%}%>
	 /*  (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '19'};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.record = result.data.record;
	          }).catch(function (result) {
	          	list.message = "SORRY!エラーが発生しました。";
	          	$('.ui.basic.modal') .modal('show');
	          });
	      
	  })(); */
  
  list.showsidebar = function(){
	  $('.ui.sidebar').sidebar('toggle');
  }
  
  var item = list.sheets[18];
  list.sheetname = item.shortname;
});
</script>
<style>
.cellheader{
    background-color:#c4e8fc
}
</style>
</head>
<body ng-controller="ListController as list">
<div class="ui top attached  menu">
  <a class="item" ng-click="list.showsidebar()">
    <i class="sidebar icon"></i>
    更多
  </a>
  <div class="item">
  </div>
  <div class="item">
  {{list.sheetname}}
  </div>
  <div class="item">
  </div>
  <div class="right menu">
      
      <div class="vertically fitted borderless item">
        <a href="exploratory.do"><button class="mini ui button">返回一览</button></a>
      </div>
    </div>
</div>
<div class="ui bottom attached segment pushable">

  <div class="ui sidebar  vertical menu">
    <a class="item" ><h3>诊查记录20180612</h3></a>
    <a class="item" ng-repeat="eachitem in list.sheets" href="{{eachitem.href}}">{{eachitem.name}}</a>
    <div style="height:100px"></div>
  </div>
  <div class="pusher">
  <div class="ui segment">
  <table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">ID</td>
				<td style="padding:3px">{{list.dt_19[0]}}</td>
				<td class="cellheader">检查日期</td>
				<td style="padding:3px">{{list.dt_19[1]}}</td>
			</tr>
			<tr>
				<td class="cellheader">姓名</td>
				<td style="padding:3px">{{list.dt_19[2]}}</td>
				<td class="cellheader">检查部位</td>
				<td style="padding:3px">{{list.dt_19[3]}}</td>
			</tr>
			<tr>
				<td class="cellheader">出生日期</td>
				<td style="padding:3px">{{list.dt_19[4]}}</td>
				<td class="cellheader">年龄/性别</td>
				<td style="padding:3px">{{list.dt_19[5]}}</td>
			</tr>
		</tbody>
	</table>
	<h2 class="ui top header" style="margin-top: 40px;"><b>本次测定结果</b></h2>
	<table class="ui unstackable table">
				<tr>
					<td style="width:95px">测定部位：</td>
					<td rowspan="4">
					{{list.dt_19[6]}}
				   </td>
				</tr>
	</table>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td colspan="4">{{list.dt_19[7]}}</td>
			</tr>
			<tr>
				<td colspan="4">{{list.dt_19[8]}}</td>
			</tr>
			<tr>
				<td colspan="4">{{list.dt_19[9]}}</td>
			</tr>
			<tr>
			<td>骨面积：</td>
			<td>{{list.dt_19[10]}}</td>
			<td>骨盐量：</td>
			<td>{{list.dt_19[11]}}</td>
			</tr>
		</tbody>
	</table>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">骨密度判定</td>
				<td >{{list.dt_19[12]}}</td>
			</tr>
			<tr>
				<td class="cellheader">解说</td>
				<td>
      				{{list.dt_19[13]}}
      			</td>
			</tr>
		</tbody>
	</table>
</div>
  </div>
</div>
</body>