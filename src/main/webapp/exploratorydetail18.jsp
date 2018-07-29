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
	  list.dt_18 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList18");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_18[<%=i%>] = "<%=dataList.get(i)%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '18'};
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
  
  var item = list.sheets[17];
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
      <td class="cellheader" colspan="4">血压脉搏检查解析结果</td>
    </tr>
    <tr>
      <td>姓名：</td>
      <td>{{list.dt_18[0]}}</td>
      <td>ID：</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
    <tr>
      <td>年龄：</td>
      <td>{{list.dt_18[0]}}</td>
      <td>身高：</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
    <tr>
      <td>BMI：</td>
      <td>{{list.dt_18[0]}}</td>
      <td>体重：</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">血管硬度（ｂaPWV）</td>
    </tr>
    <tr>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">足部血管阻塞检测(ABI)</td>
    </tr>
    <tr>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">定期检查</td>
    </tr>
    <tr>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>