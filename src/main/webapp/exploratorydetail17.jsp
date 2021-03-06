﻿<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
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
	  list.dt_17 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList17");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_17[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	 /*  (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '17'};
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
  
  var item = list.sheets[16];
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
      <td class="cellheader" colspan="4">胃癌风险分级检查</td>
    </tr>
    <tr>
      <td>ID</td>
      <td>{{list.dt_17[0]}}</td>
      <td>检查日期</td>
      <td>{{list.dt_17[1]}}</td>
    </tr>
    <tr>
      <td>姓名</td>
      <td>{{list.dt_17[2]}}</td>
      <td>报告日期</td>
      <td>{{list.dt_17[3]}}</td>
    </tr>
  </tbody>
</table>
 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">判定结果</td>
    </tr>
    <tr>
      <td colspan="4">{{list.dt_17[4]}}</td>
    </tr>
  </tbody>
</table>
 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td colspan="2">检查项目</td>
      <td>测定值</td>
      <td>判定</td>
    </tr>
    <tr>
      <td colspan="2">幽门螺旋杆菌抗体( EIA法：E板 )</td>
      <td>{{list.dt_17[5]}}</td>
      <td>{{list.dt_17[6]}}</td>
    </tr>
    <tr>
      <td rowspan="3">胃蛋白酶原</td>
      <td>胃蛋白酶原Ⅰ（PGⅠ）</td>
      <td>{{list.dt_17[7]}}</td>
      <td>{{list.dt_17[8]}}</td>
    </tr>
    <tr>
      <td>胃蛋白酶原Ⅱ（PGⅡ）</td>
      <td>{{list.dt_17[9]}}</td>
      <td>{{list.dt_17[10]}}</td>
    </tr>
    <tr>
      <td>PGⅠ/PGⅡ比</td>
      <td>{{list.dt_17[11]}}</td>
      <td>{{list.dt_17[12]}}</td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td colspan="4" style="text-align:center;">阳性判定基准</td>
    </tr>
    <tr>
      <td colspan="2">幽门螺旋杆菌抗体( EIA法：E板 )</td>
      <td colspan="2">3.0 U/mL 以上</td>
    </tr>
    <tr>
      <td colspan="2">胃蛋白酶原</td>
      <td colspan="2">胃蛋白酶原70.0ng/mL以下并且PGⅠ/Ⅱ比3.0以下</td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
   <thead>
      <tr>
      <th style="text-align:center;padding:0px">流程图</th>
    </tr>
   </thead>
  <tbody>
    <tr>
      <td colspan="4" style="text-align:center;padding:0px">血液检查（胃癌风险分级检查）</td>
    </tr>
    <tr>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px;background-color:#96CFEC">A 型</td>
      <td style="text-align:center;padding:0px;background-color:#F9C45B">B 型</td>
      <td style="text-align:center;padding:0px;background-color:#FC2A54">C 型</td>
      <td style="text-align:center;padding:0px;background-color:#FC2A54">D 型</td>
    </tr>
    <tr>
      <td rowspan="3" style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td colspan="3" style="text-align:center;padding:0px">精密检查</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td colspan="4" style="text-align:center;padding:0px">设定查体的间隔时间</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px;background-color:#96CFEC">5年1次</td>
      <td style="text-align:center;padding:0px;background-color:#F9C45B">2～3年1次</td>
      <td colspan="2" style="text-align:center;padding:0px;background-color:#FC2A54">1年1次</td>
    </tr>
    <tr>
    <td colspan="4">*   幽门螺旋杆菌除菌后的人属于E型 (除菌群) ，不包含在胃癌风险分级检查之中。<br>但是,要定期的做内窥镜检查。</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>