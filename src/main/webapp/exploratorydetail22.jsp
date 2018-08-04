<%@ page import="java.util.List"%>
<%@ page import="com.bwc.biz.emedicare.common.StringUtil"%>
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
	  list.dt_22 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList22");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_22[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '22'};
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
  
  var item = list.sheets[21];
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
      <td class="cellheader" style="width:20%">ID</td>
      <td>{{list.dt_22[0]}}</td>
      <td class="cellheader" style="width:20%">检查日期</td>
      <td>{{list.dt_22[1]}}</td>
    </tr>
    <tr>
      <td class="cellheader">姓名</td>
      <td>{{list.dt_22[2]}}</td>
      <td class="cellheader">年龄/性别</td>
      <td>{{list.dt_22[3]}}</td>
    </tr>
    <tr>
      <td class="cellheader">第一次担任医生</td>
      <td>{{list.dt_22[4]}}</td>
      <td class="cellheader">第一次诊断时间</td>
      <td>{{list.dt_22[5]}}</td>
    </tr>
    <tr>
      <td class="cellheader">第二次担任医生</td>
      <td>{{list.dt_22[6]}}</td>
      <td class="cellheader">第二次诊断时间</td>
      <td>{{list.dt_22[7]}}</td>
    </tr>
    <tr>
      <td colspan="4"></td>
    </tr>
    <tr>
      <td class="cellheader" colspan="4">检查评语</td>
    </tr>
    <tr>
      <td colspan="4">{{list.dt_22[8]}}</td>
    </tr>
    <tr>
      <td class="cellheader" colspan="4">所见</td>
    </tr>
    <tr>
      <td colspan="4">{{list.dt_22[9]}}</td>
    </tr>
    <tr>
      <td class="cellheader" colspan="4">诊断</td>
    </tr>
    <tr>
      <td colspan="4"><pre>{{list.dt_22[10]}}</pre></td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>