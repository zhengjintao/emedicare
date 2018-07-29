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
initdata.expid = '<%=request.getAttribute("expid")%>';
initdata.name = '<%=request.getAttribute("name")%>';
initdata.historydate = '<%=request.getAttribute("historydate")%>';
exturl= "historydate=" + initdata.historydate + "&expid=" + initdata.expid +"&name=" + initdata.name;
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
	  list.expid = 'E0000001';
	  list.sheets = constsheets;
	  list.dt_05 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList05");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_05[<%=i%>] = "<%=dataList.get(i)%>";
	   <%}%>
	 /*  (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '05'};
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
  
  $('#accordion1') .accordion({exclusive :false});
  $('#accordion2') .accordion({exclusive :false});
  $('#accordion3') .accordion({exclusive :false});
  
  var item = list.sheets[10];
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
      <td class="cellheader" rowspan="5">糖尿病</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="4"></td>
      <td>任意时间血糖</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>血糖</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>HbA1c(NGSP)</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>HbA2c(JDS)</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">痛风</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td>{{list.dt_05[0]}}</td>
      <td>尿酸</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="3">心电图</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="2">{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    
    <tr>
      <td colspan="5">{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="3">便</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="2"></td>
      <td>便潜血第一次</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>便潜血第二次</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="9">眼底</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">当次</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="8">{{list.dt_05[0]}}</td>
      <td colspan="3" style="text-align:center">右    左 </td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>检查项目</td>
      <td>标准值/单位</td>
      <td>本次</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>K-W（右）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>K-W（左）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>Scheie　S（右）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>Scheie　S（左）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>Scheie　H（右）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>Scheie　H（左）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">眼压</td>
      <td>{{list.dt_05[0]}}</td>
      <td>眼压（右）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_05[0]}}</td>
      <td>眼压（左）</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
      <td>{{list.dt_05[0]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>