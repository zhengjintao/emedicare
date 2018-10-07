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
	  list.dt_09 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList09");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_09[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	   
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '09'};
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
  
  var item = list.sheets[8];
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
      <td class="cellheader" rowspan="8">肿瘤标志物</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="7"><pre>{{list.dt_09[0]}}</pre></td>
      <td>AFP</td>
      <td>{{list.dt_09[1]}}</td>
      <td>{{list.dt_09[2]}}</td>
      <td>{{list.dt_09[3]}}</td>
      <td>{{list.dt_09[4]}}</td>
    </tr>
    <tr>
      <td>PIVKA-II</td>
      <td>{{list.dt_09[5]}}</td>
      <td>{{list.dt_09[6]}}</td>
      <td>{{list.dt_09[7]}}</td>
      <td>{{list.dt_09[8]}}</td>
    </tr>
    <tr>
      <td>CEA</td>
      <td>{{list.dt_09[9]}}</td>
      <td>{{list.dt_09[10]}}</td>
      <td>{{list.dt_09[11]}}</td>
      <td>{{list.dt_09[12]}}</td>
    </tr>
    <tr>
      <td>CA19-9</td>
      <td>{{list.dt_09[13]}}</td>
      <td>{{list.dt_09[14]}}</td>
      <td>{{list.dt_09[15]}}</td>
      <td>{{list.dt_09[16]}}</td>
    </tr>
    <tr>
      <td>CA15-3</td>
      <td>{{list.dt_09[17]}}</td>
      <td>{{list.dt_09[18]}}</td>
      <td>{{list.dt_09[19]}}</td>
      <td>{{list.dt_09[20]}}</td>
    </tr>
    <tr>
      <td>CA125</td>
      <td>{{list.dt_09[21]}}</td>
      <td>{{list.dt_09[22]}}</td>
      <td>{{list.dt_09[23]}}</td>
      <td>{{list.dt_09[24]}}</td>
    </tr>
    <tr>
      <td>CYFRA</td>
      <td>{{list.dt_09[25]}}</td>
      <td>{{list.dt_09[26]}}</td>
      <td>{{list.dt_09[27]}}</td>
      <td>{{list.dt_09[28]}}</td>
    </tr>
    <tr>
      <td colspan="7"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="5">ABI/PWV</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="4"><pre>{{list.dt_09[29]}}</pre></td>
      <td>ABI 右</td>
      <td>{{list.dt_09[30]}}</td>
      <td>{{list.dt_09[31]}}</td>
      <td>{{list.dt_09[32]}}</td>
      <td>{{list.dt_09[33]}}</td>
    </tr>
    <tr>
      <td>ABI 左</td>
      <td>{{list.dt_09[34]}}</td>
      <td>{{list.dt_09[35]}}</td>
      <td>{{list.dt_09[36]}}</td>
      <td>{{list.dt_09[37]}}</td>
    </tr>
    <tr>
      <td>baPWV 右</td>
      <td>{{list.dt_09[38]}}</td>
      <td>{{list.dt_09[39]}}</td>
      <td>{{list.dt_09[40]}}</td>
      <td>{{list.dt_09[41]}}</td>
    </tr>
    <tr>
      <td>baPWV 左</td>
      <td>{{list.dt_09[42]}}</td>
      <td>{{list.dt_09[43]}}</td>
      <td>{{list.dt_09[44]}}</td>
      <td>{{list.dt_09[45]}}</td>
    </tr>
    <tr>
      <td colspan="7"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">甲状腺超声</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td><pre>{{list.dt_09[46]}}</pre></td>
      <td>{{list.dt_09[47]}}</td>
      <td>{{list.dt_09[48]}}</td>
      <td>{{list.dt_09[49]}}</td>
    </tr>
    
    <tr>
      <td colspan="5"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="4">骨密度</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="3"><pre>{{list.dt_09[50]}}</pre></td>
      <td>{{list.dt_09[51]}}</td>
      <td>{{list.dt_09[52]}}</td>
      <td>{{list.dt_09[53]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_09[54]}}</td>
      <td>{{list.dt_09[55]}}</td>
      <td>{{list.dt_09[56]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_09[57]}}</td>
      <td>{{list.dt_09[58]}}</td>
      <td>{{list.dt_09[59]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>