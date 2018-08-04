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
	  list.dt_14 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList14");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_14[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	  list.sheets = constsheets;
	  (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '14'};
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
	      
	  })();
  
  list.showsidebar = function(){
	  $('.ui.sidebar').sidebar('toggle');
  }
  
  var item = list.sheets[13];
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
      <td>{{list.dt_14[0]}}</td>
      <td class="cellheader" style="width:20%">检查日期</td>
      <td>{{list.dt_14[1]}}</td>
    </tr>
    <tr>
      <td class="cellheader">姓名</td>
      <td>{{list.dt_14[2]}}</td>
      <td class="cellheader">年龄/性别</td>
      <td>{{list.dt_14[3]}}</td>
    </tr>
    <tr>
      <td colspan="4"></td>
    </tr>
    <tr>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">检查结果</td>
      <td colspan="2" class="cellheader">判定</td>
    </tr>
    <tr>
      <td>血氧饱和度</td>
      <td>{{list.dt_14[4]}}</td>
      <td colspan="2" >{{list.dt_14[5]}}</td>
    </tr>
    <tr>
      <td class="cellheader" colspan="2">判定区分</td>
      <td class="cellheader" colspan="2">说明事项</td>
    </tr>
    <tr>
      <td colspan="2"><pre>{{list.dt_14[6]}}</pre></td>
      <td colspan="2"><pre>{{list.dt_14[7]}}</pre></td>
    </tr>
    <tr>
      <td colspan="4"><pre>{{list.dt_14[8]}}</pre></td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>