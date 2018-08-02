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
  list.dt_02 = new Array();
  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList02");%>;
  <%for (int i = 0; i < dataList.size(); i++) {%>  
       list.dt_02[<%=i%>] = "<%=dataList.get(i)%>";
   <%}%>
  /* (function(){
	  $scope.url =  "exploratorydetail.do";
	  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '02'};
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
  
  var item = list.sheets[1];
  list.sheetname = item.shortname;
});
</script>
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
</head>
<body ng-controller="ListController as list">
	<div class="ui top attached  menu">
		<a class="item" ng-click="list.showsidebar()"> <i
			class="sidebar icon"></i> 更多
		</a>
		<div class="item"></div>
		<div class="item">{{list.sheetname}}</div>
		<div class="item"></div>
		<div class="right menu">

			<div class="vertically fitted borderless item">
				<a href="exploratory.do"><button class="mini ui button">返回一览</button></a>
			</div>
		</div>
	</div>
	<div class="ui bottom attached segment pushable">

		<div class="ui sidebar  vertical menu">
			<a class="item"><h3>诊查记录20180612</h3></a> <a class="item"
				ng-repeat="eachitem in list.sheets" href="{{eachitem.href}}">{{eachitem.name}}</a>
			<div style="height: 100px"></div>
		</div>
		<div class="pusher">
			<div class="ui segment">
				<table class="ui unstackable celled structured table">
					<tbody>
						<tr>
							<td class="cellheader" style="width: 100px" rowspan="3">诊察所见</td>
							<td class="cellheader">判定</td>
							<td class="cellheader">本次</td>
							<td class="cellheader">上次</td>
							<td class="cellheader">上上次</td>
						</tr>
						<tr>
							<td rowspan="2">{{list.dt_02[0]}}</td>
							<td>{{list.dt_02[1]}}</td>
							<td>{{list.dt_02[2]}}</td>
							<td>{{list.dt_02[3]}}</td>
						</tr>
						<tr>
							<td>{{list.dt_02[4]}}</td>
							<td>{{list.dt_02[5]}}</td>
							<td>{{list.dt_02[6]}}</td>
						</tr>
					</tbody>
				</table>
				<table class="ui unstackable celled structured table">
					<tbody>
						<tr>
							<td class="cellheader" style="width: 100px" rowspan="8">身体测量</td>
							<td class="cellheader">判定</td>
							<td class="cellheader">检查项目</td>
							<td class="cellheader">标准值/单位</td>
							<td class="cellheader">本次</td>
						</tr>
						<tr>
							<td rowspan="7">{{list.dt_02[7]}}</td>
							<td>身高</td>
							<td>{{list.dt_02[8]}}</td>
							<td>{{list.dt_02[9]}}</td>
						</tr>
						<tr>
							<td>体重</td>
							<td>{{list.dt_02[10]}}</td>
							<td>{{list.dt_02[11]}}</td>
						</tr>
						<tr>
							<td>标准体重</td>
							<td>{{list.dt_02[12]}}</td>
							<td>{{list.dt_02[13]}}</td>
						</tr>
						<tr>
							<td>肥胖度</td>
							<td>{{list.dt_02[14]}}</td>
							<td>{{list.dt_02[15]}}</td>
						</tr>
						<tr>
							<td>BMI指数</td>
							<td>{{list.dt_02[16]}}</td>
							<td>{{list.dt_02[17]}}</td>
						</tr>
						<tr>
							<td>腹围(cm)</td>
							<td>{{list.dt_02[18]}}</td>
							<td>{{list.dt_02[19]}}</td>
						</tr>
						<tr>
							<td>体脂肪率</td>
							<td>{{list.dt_02[20]}}</td>
							<td>{{list.dt_02[21]}}</td>
						</tr>
						<tr>
						<td colspan="5">{{list.dt_02[25]}}</td>
						</tr>
					</tbody>
				</table>

				<table class="ui unstackable celled structured table">
					<tbody>
						<tr>
							<td class="cellheader" style="width: 100px" rowspan="4">血压</td>
							<td class="cellheader">判定</td>
							<td class="cellheader">检查项目</td>
							<td class="cellheader">标准值/单位</td>
							<td class="cellheader">本次</td>
						</tr>
						<tr>
							<td rowspan="3">{{list.dt_02[26]}}</td>
							<td>高压</td>
							<td>{{list.dt_02[27]}}</td>
							<td>{{list.dt_02[28]}}</td>
						</tr>
						<tr>
							<td>低压</td>
							<td>{{list.dt_02[29]}}</td>
							<td>{{list.dt_02[30]}}</td>
						</tr>
						<tr>
							<td>{{list.dt_02[31]}}</td>
							<td>{{list.dt_02[32]}}</td>
							<td>{{list.dt_02[33]}}</td>
						</tr>
						<tr>
						<td colspan="5">{{list.dt_02[34]}}</td>
						</tr>
					</tbody>
				</table>

				<table class="ui unstackable celled structured table">
					<tbody>
						<tr>
							<td class="cellheader" style="width: 100px" rowspan="4">视力</td>
							<td class="cellheader">判定</td>
							<td class="cellheader">检查项目</td>
							<td class="cellheader">标准值/单位</td>
							<td class="cellheader">本次</td>
						</tr>
						<tr>
							<td rowspan="3">{{list.dt_02[35]}}</td>
							<td>矫正视力（右）</td>
							<td>{{list.dt_02[36]}}</td>
							<td>{{list.dt_02[37]}}</td>
						</tr>
						<tr>
							<td>矫正视力（左）</td>
							<td>{{list.dt_02[38]}}</td>
							<td>{{list.dt_02[39]}}</td>
						</tr>
						<tr>
							<td>{{list.dt_02[40]}}</td>
							<td>{{list.dt_02[41]}}</td>
							<td>{{list.dt_02[42]}}</td>
						</tr>
						<tr>
						<td colspan="5">{{list.dt_02[43]}}</td>
						</tr>
					</tbody>
				</table>

				<table class="ui unstackable celled structured table">
					<tbody>
						<tr>
							<td class="cellheader" style="width: 100px" rowspan="6">听力</td>
							<td class="cellheader">判定</td>
							<td class="cellheader">检查项目</td>
							<td class="cellheader">标准值/单位</td>
							<td class="cellheader">本次</td>
						</tr>
						<tr>
							<td rowspan="5">{{list.dt_02[44]}}</td>
							<td>{{list.dt_02[45]}}</td>
							<td>{{list.dt_02[46]}}</td>
							<td>{{list.dt_02[47]}}</td>
						</tr>
						<tr>
							<td>{{list.dt_02[48]}}</td>
							<td>{{list.dt_02[49]}}</td>
							<td>{{list.dt_02[50]}}</td>
						</tr>
						<tr>
							<td>{{list.dt_02[51]}}</td>
							<td>{{list.dt_02[52]}}</td>
							<td>{{list.dt_02[53]}}</td>
						</tr>
						<tr>
							<td>{{list.dt_02[54]}}</td>
							<td>{{list.dt_02[55]}}</td>
							<td>{{list.dt_02[56]}}</td>
						</tr>
						<tr>
							<td>{{list.dt_02[57]}}</td>
							<td>{{list.dt_02[58]}}</td>
							<td>{{list.dt_02[59]}}</td>
						</tr>
						<tr>
						<td colspan="5">{{list.dt_02[60]}}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>