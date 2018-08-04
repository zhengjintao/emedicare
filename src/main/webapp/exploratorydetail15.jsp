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
	  list.dt_15 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList15");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_15[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '15'};
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
  
  var item = list.sheets[14];
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
      <td>{{list.dt_15[0]}}</td>
      <td class="cellheader" style="width:20%">检查日期</td>
      <td>{{list.dt_15[1]}}</td>
    </tr>
    <tr>
      <td class="cellheader">姓名</td>
      <td>{{list.dt_15[2]}}</td>
      <td class="cellheader">报告日期</td>
      <td>{{list.dt_15[3]}}</td>
    </tr>
    <tr>
      <td class="cellheader">担任医生</td>
      <td>{{list.dt_15[4]}}</td>
      <td class="cellheader">年龄/性别</td>
      <td>{{list.dt_15[5]}}</td>
    </tr>
   
    <tr>
      <td colspan="4"></td>
    </tr>
    <tr>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">检查结果</td>
      <td class="cellheader">基准值</td>
      <td class="cellheader">单位</td>
    </tr>
    <tr>
      <td>TSH</td>
      <td>{{list.dt_15[6]}}</td>
      <td>{{list.dt_15[7]}}</td>
      <td>{{list.dt_15[8]}}</td>
    </tr>
    <tr>
      <td>FT4</td>
      <td>{{list.dt_15[9]}}</td>
      <td>{{list.dt_15[10]}}</td>
      <td>{{list.dt_15[11]}}</td>
    </tr>
    <tr>
      <td>FT3</td>
      <td>{{list.dt_15[12]}}</td>
      <td>{{list.dt_15[13]}}</td>
      <td>{{list.dt_15[14]}}</td>
    </tr>
    <tr>
      <td>抗甲状腺球蛋白抗体 （Tg-Ab）</td>
      <td>{{list.dt_15[15]}}</td>
      <td>{{list.dt_15[16]}}</td>
      <td>{{list.dt_15[17]}}</td>
    </tr>
    <tr>
      <td>抗甲状腺过氧化物酶抗体 （TPO-Ab）</td>
      <td>{{list.dt_15[18]}}</td>
      <td>{{list.dt_15[19]}}</td>
      <td>{{list.dt_15[20]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>