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
  list.dt_04 = new Array();
  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList04");%>;
  <%for (int i = 0; i < dataList.size(); i++) {%>  
       list.dt_04[<%=i%>] = "<%=dataList.get(i)%>";
   <%}%>
   
  /* (function(){
	  $scope.url =  "exploratorydetail.do";
	  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '04'};
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
  
  var item = list.sheets[3];
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
      <td class="cellheader" style="width:100px" rowspan="6">胸部X线检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td rowspan="5">{{list.dt_04[0]}}</td>
      <td>部位</td>
      <td colspan="3">所见</td>
    </tr>
    <tr>
      <td>{{list.dt_04[1]}}</td>
      <td colspan="3">{{list.dt_04[2]}}</td>
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
      <td>{{list.dt_04[3]}}</td>
      <td>{{list.dt_04[4]}}</td>
      <td>{{list.dt_04[5]}}</td>
      <td>{{list.dt_04[6]}}</td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="6">脂质</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="5">{{list.dt_04[7]}}</td>
      <td>总胆固醇</td>
      <td>{{list.dt_04[8]}}</td>
      <td>{{list.dt_04[9]}}</td>
    </tr>
     <tr>
      <td>中性脂肪</td>
      <td>{{list.dt_04[10]}}</td>
      <td>{{list.dt_04[11]}}</td>
    </tr>
     <tr>
      <td>高密度脂蛋白总胆固醇</td>
      <td>{{list.dt_04[12]}}</td>
      <td>{{list.dt_04[13]}}</td>
    </tr>
     <tr>
      <td>低密度脂蛋白总胆固醇</td>
      <td>{{list.dt_04[14]}}</td>
      <td>{{list.dt_04[15]}}</td>
    </tr>
     <tr>
      <td>{{list.dt_04[16]}}</td>
      <td>{{list.dt_04[17]}}</td>
      <td>{{list.dt_04[18]}}</td>
    </tr>
     <tr>
     <td colspan="5">{{list.dt_04[19]}}</td>
     </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="14">肝功能检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="13">{{list.dt_04[20]}}</td>
      <td>总胆红素（T-BIL）</td>
      <td>{{list.dt_04[21]}}</td>
      <td>{{list.dt_04[22]}}</td>
    </tr>
     <tr>
      <td>ZTT</td>
      <td>{{list.dt_04[23]}}</td>
      <td>{{list.dt_04[24]}}</td>
    </tr>
     <tr>
      <td>TTT</td>
      <td>{{list.dt_04[25]}}</td>
      <td>{{list.dt_04[26]}}</td>
    </tr>
     <tr>
      <td>AST</td>
      <td>{{list.dt_04[27]}}</td>
      <td>{{list.dt_04[28]}}</td>
    </tr>
     <tr>
      <td>ALT</td>
      <td>{{list.dt_04[29]}}</td>
      <td>{{list.dt_04[30]}}</td>
    </tr>
     <tr>
      <td>γ－GTP</td>
      <td>{{list.dt_04[31]}}</td>
      <td>{{list.dt_04[32]}}</td>
    </tr>
    <tr>
      <td>总蛋白（TP）</td>
      <td>{{list.dt_04[33]}}</td>
      <td>{{list.dt_04[34]}}</td>
    </tr>
     <tr>
      <td>白蛋白</td>
      <td>{{list.dt_04[35]}}</td>
      <td>{{list.dt_04[36]}}</td>
    </tr>
    <tr>
      <td>A/G比</td>
      <td>{{list.dt_04[37]}}</td>
      <td>{{list.dt_04[38]}}</td>
    </tr>
    <tr>
      <td>ALP</td>
      <td>{{list.dt_04[39]}}</td>
      <td>{{list.dt_04[40]}}</td>
    </tr>
    <tr>
      <td>LAP</td>
      <td>{{list.dt_04[41]}}</td>
      <td>{{list.dt_04[42]}}</td>
    </tr>
    <tr>
      <td>ChE</td>
      <td>{{list.dt_04[43]}}</td>
      <td>{{list.dt_04[44]}}</td>
    </tr>
    <tr>
      <td>LDH</td>
      <td>{{list.dt_04[45]}}</td>
      <td>{{list.dt_04[46]}}</td>
    </tr>
    <tr>
      <td colspan="5">{{list.dt_04[47]}}</td>
    </tr>
  </tbody>
</table>

</div>
  </div>
</div>
</body>