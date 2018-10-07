<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
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
	  list.dt_10 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList10");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_10[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '10'};
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
  
  var item = list.sheets[9];
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
      <td class="cellheader" rowspan="5">胸部CT</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="4"><pre>{{list.dt_10[0]}}</pre></td>
      <td>{{list.dt_10[1]}}</td>
      <td>{{list.dt_10[2]}}</td>
      <td>{{list.dt_10[3]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[4]}}</td>
      <td>{{list.dt_10[5]}}</td>
      <td>{{list.dt_10[6]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[7]}}</td>
      <td>{{list.dt_10[8]}}</td>
      <td>{{list.dt_10[9]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[10]}}</td>
      <td>{{list.dt_10[11]}}</td>
      <td>{{list.dt_10[12]}}</td>
    </tr>
    <tr>
      <td colspan="5"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="5">腹部CT</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="4"><pre>{{list.dt_10[13]}}</pre></td>
      <td>{{list.dt_10[14]}}</td>
      <td>{{list.dt_10[15]}}</td>
      <td>{{list.dt_10[16]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[17]}}</td>
      <td>{{list.dt_10[18]}}</td>
      <td>{{list.dt_10[19]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[20]}}</td>
      <td>{{list.dt_10[21]}}</td>
      <td>{{list.dt_10[22]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[23]}}</td>
      <td>{{list.dt_10[24]}}</td>
      <td>{{list.dt_10[25]}}</td>
    </tr>
    <tr>
      <td colspan="5"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="5">MRI/MRA</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="4"><pre>{{list.dt_10[26]}}</pre></td>
      <td>{{list.dt_10[27]}}</td>
      <td>{{list.dt_10[28]}}</td>
      <td>{{list.dt_10[29]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[30]}}</td>
      <td>{{list.dt_10[31]}}</td>
      <td>{{list.dt_10[32]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[33]}}</td>
      <td>{{list.dt_10[34]}}</td>
      <td>{{list.dt_10[35]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[36]}}</td>
      <td>{{list.dt_10[37]}}</td>
      <td>{{list.dt_10[38]}}</td>
    </tr>
    <tr>
      <td colspan="5"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="5">颈部超声</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="4"><pre>{{list.dt_10[39]}}</pre></td>
      <td>{{list.dt_10[40]}}</td>
      <td>{{list.dt_10[41]}}</td>
      <td>{{list.dt_10[42]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[43]}}</td>
      <td>{{list.dt_10[44]}}</td>
      <td>{{list.dt_10[45]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[46]}}</td>
      <td>{{list.dt_10[47]}}</td>
      <td>{{list.dt_10[48]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_10[49]}}</td>
      <td>{{list.dt_10[50]}}</td>
      <td>{{list.dt_10[51]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>