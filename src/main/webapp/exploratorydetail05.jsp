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
  
  var item = list.sheets[4];
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
      <td rowspan="4">{{list.dt_05[0]}}</td>
      <td>任意时间血糖</td>
      <td>{{list.dt_05[1]}}</td>
      <td>{{list.dt_05[2]}}</td>
      <td>{{list.dt_05[3]}}</td>
      <td>{{list.dt_05[4]}}</td>
    </tr>
    <tr>
      <td>血糖</td>
      <td>{{list.dt_05[5]}}</td>
      <td>{{list.dt_05[6]}}</td>
      <td>{{list.dt_05[7]}}</td>
      <td>{{list.dt_05[8]}}</td>
    </tr>
    <tr>
      <td>HbA1c(NGSP)</td>
      <td>{{list.dt_05[9]}}</td>
      <td>{{list.dt_05[10]}}</td>
      <td>{{list.dt_05[11]}}</td>
      <td>{{list.dt_05[12]}}</td>
    </tr>
    <tr>
      <td>HbA2c(JDS)</td>
      <td>{{list.dt_05[13]}}</td>
      <td>{{list.dt_05[14]}}</td>
      <td>{{list.dt_05[15]}}</td>
      <td>{{list.dt_05[16]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_05[17]}}</td>
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
      <td>{{list.dt_05[18]}}</td>
      <td>尿酸</td>
      <td>{{list.dt_05[19]}}</td>
      <td>{{list.dt_05[20]}}</td>
      <td>{{list.dt_05[21]}}</td>
      <td>{{list.dt_05[22]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_05[23]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="3">心电图</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td>{{list.dt_05[24]}}</td>
      <td>{{list.dt_05[25]}}</td>
      <td>{{list.dt_05[26]}}</td>
      <td>{{list.dt_05[27]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_05[28]}}</td>
      <td>{{list.dt_05[29]}}</td>
      <td>{{list.dt_05[30]}}</td>
      <td>{{list.dt_05[31]}}</td>
    </tr>
    
    <tr>
      <td colspan="5"></td>
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
      <td rowspan="2">{{list.dt_05[32]}}</td>
      <td>便潜血第一次</td>
      <td>{{list.dt_05[33]}}</td>
      <td>{{list.dt_05[34]}}</td>
      <td>{{list.dt_05[35]}}</td>
      <td>{{list.dt_05[36]}}</td>
    </tr>
    <tr>
      <td>便潜血第二次</td>
      <td>{{list.dt_05[37]}}</td>
      <td>{{list.dt_05[38]}}</td>
      <td>{{list.dt_05[39]}}</td>
      <td>{{list.dt_05[40]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_05[41]}}</td>
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
      <td rowspan="8">{{list.dt_05[42]}}</td>
      <td colspan="3" style="text-align:center">右    左 </td>
      <td>{{list.dt_05[43]}}</td>
      <td>{{list.dt_05[44]}}</td>
    </tr>
    <tr>
      <td>检查项目</td>
      <td>标准值/单位</td>
      <td>本次</td>
      <td>{{list.dt_05[45]}}</td>
      <td>{{list.dt_05[46]}}</td>
    </tr>
    <tr>
      <td>K-W（右）</td>
      <td>{{list.dt_05[47]}}</td>
      <td>{{list.dt_05[48]}}</td>
      <td>{{list.dt_05[49]}}</td>
      <td>{{list.dt_05[50]}}</td>
    </tr>
    <tr>
      <td>K-W（左）</td>
      <td>{{list.dt_05[51]}}</td>
      <td>{{list.dt_05[52]}}</td>
      <td>{{list.dt_05[53]}}</td>
      <td>{{list.dt_05[54]}}</td>
    </tr>
    <tr>
      <td>Scheie　S（右）</td>
      <td>{{list.dt_05[55]}}</td>
      <td>{{list.dt_05[56]}}</td>
      <td>{{list.dt_05[57]}}</td>
      <td>{{list.dt_05[58]}}</td>
    </tr>
    <tr>
      <td>Scheie　S（左）</td>
      <td>{{list.dt_05[59]}}</td>
      <td>{{list.dt_05[60]}}</td>
      <td>{{list.dt_05[61]}}</td>
      <td>{{list.dt_05[62]}}</td>
    </tr>
    <tr>
      <td>Scheie　H（右）</td>
      <td>{{list.dt_05[63]}}</td>
      <td>{{list.dt_05[64]}}</td>
      <td>{{list.dt_05[65]}}</td>
      <td>{{list.dt_05[66]}}</td>
    </tr>
    <tr>
      <td>Scheie　H（左）</td>
      <td>{{list.dt_05[67]}}</td>
      <td>{{list.dt_05[68]}}</td>
      <td>{{list.dt_05[69]}}</td>
      <td>{{list.dt_05[70]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">眼压</td>
      <td>{{list.dt_05[71]}}</td>
      <td>眼压（右）</td>
      <td>{{list.dt_05[72]}}</td>
      <td>{{list.dt_05[73]}}</td>
      <td>{{list.dt_05[74]}}</td>
      <td>{{list.dt_05[75]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_05[76]}}</td>
      <td>眼压（左）</td>
      <td>{{list.dt_05[77]}}</td>
      <td>{{list.dt_05[78]}}</td>
      <td>{{list.dt_05[79]}}</td>
      <td>{{list.dt_05[80]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>