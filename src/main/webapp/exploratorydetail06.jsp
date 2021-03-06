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
	  list.dt_06 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList06");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_06[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '06'};
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
  
  var item = list.sheets[5];
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
      <td class="cellheader" style="width:100px" rowspan="9">上部消化管内视镜</td>
      <td class="cellheader">判定</td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td rowspan="8"><pre>{{list.dt_06[0]}}</pre></td>
      <td>部位</td>
      <td colspan="3">所见</td>
    </tr>
    <tr>
      <td>{{list.dt_06[1]}}</td>
      <td colspan="3">{{list.dt_06[2]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_06[3]}}</td>
      <td colspan="3">{{list.dt_06[4]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_06[5]}}</td>
      <td colspan="3">{{list.dt_06[6]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_06[7]}}</td>
      <td colspan="3">{{list.dt_06[8]}}</td>
    </tr>
    <tr>
      <td class="cellheader" colspan="2">上次</td>
      <td class="cellheader" colspan="2">上上次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td>所见</td>
      <td>部位</td>
      <td>所见</td>
    </tr>
    <tr>
      <td>{{list.dt_06[9]}}</td>
      <td>{{list.dt_06[10]}}</td>
      <td>{{list.dt_06[11]}}</td>
      <td>{{list.dt_06[12]}}</td>
    </tr>
     <tr>
      <td class="cellheader" style="width:100px" rowspan="3">胃活检</td>
      <td rowspan="3"><pre>{{list.dt_06[13]}}</pre></td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td colspan="3">所见</td>
    </tr>
    <tr>
      <td>{{list.dt_06[14]}}</td>
      <td colspan="3">{{list.dt_06[15]}}</td>
    </tr>
  </tbody>
</table>
 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="8">上腹部超声波</td>
      <td class="cellheader">判定</td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td rowspan="7"><pre>{{list.dt_06[16]}}</pre></td>
      <td>部位</td>
      <td colspan="3">所见</td>
    </tr>
    <tr>
      <td>{{list.dt_06[17]}}</td>
      <td colspan="3">{{list.dt_06[18]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_06[19]}}</td>
      <td colspan="3">{{list.dt_06[20]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_06[21]}}</td>
      <td colspan="3">{{list.dt_06[22]}}</td>
    </tr>
    <tr>
      <td colspan="2">上次</td>
      <td colspan="2">上上次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td>所见</td>
      <td>部位</td>
      <td>所见</td>
    </tr>
    <tr>
      <td>{{list.dt_06[23]}}</td>
      <td>{{list.dt_06[24]}}</td>
      <td>{{list.dt_06[25]}}</td>
      <td>{{list.dt_06[26]}}</td>
    </tr>
    
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="4">血沉</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="3"><pre>{{list.dt_06[27]}}</pre></td>
      <td>血沉（60分）</td>
      <td>{{list.dt_06[28]}}</td>
      <td>{{list.dt_06[29]}}</td>
    </tr>
     <tr>
      <td>血沉（120分）</td>
      <td>{{list.dt_06[30]}}</td>
      <td>{{list.dt_06[31]}}</td>
    </tr>
     <tr>
      <td>{{list.dt_06[32]}}</td>
      <td>{{list.dt_06[33]}}</td>
      <td>{{list.dt_06[34]}}</td>
    </tr>
  </tbody>
</table>
  </div>
    </div>
</div>
</body>