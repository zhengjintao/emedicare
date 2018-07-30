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
	  list.dt_07 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList07");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_07[<%=i%>] = "<%=dataList.get(i)%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '07'};
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
  
  var item = list.sheets[6];
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
      <td class="cellheader" rowspan="6">肺功能</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="5">{{list.dt_07[0]}}</td>
      <td>肺活量（实测值</td>
      <td>{{list.dt_07[1]}}</td>
      <td>{{list.dt_07[2]}}</td>
      <td>{{list.dt_07[3]}}</td>
      <td>{{list.dt_07[4]}}</td>
    </tr>
    <tr>
      <td>%肺活量</td>
      <td>{{list.dt_07[5]}}</td>
      <td>{{list.dt_07[6]}}</td>
      <td>{{list.dt_07[7]}}</td>
      <td>{{list.dt_07[8]}}</td>
    </tr>
    <tr>
      <td>1秒率</td>
      <td>{{list.dt_07[9]}}</td>
      <td>{{list.dt_07[10]}}</td>
      <td>{{list.dt_07[11]}}</td>
      <td>{{list.dt_07[12]}}</td>
    </tr>
    <tr>
      <td>%1秒量</td>
      <td>{{list.dt_07[13]}}</td>
      <td>{{list.dt_07[14]}}</td>
      <td>{{list.dt_07[15]}}</td>
      <td>{{list.dt_07[16]}}</td>
    </tr>
    <tr>
      <td>V25</td>
      <td>{{list.dt_07[17]}}</td>
      <td>{{list.dt_07[18]}}</td>
      <td>{{list.dt_07[19]}}</td>
      <td>{{list.dt_07[20]}}</td>
    </tr>
   
    <tr>
      <td colspan="7">{{list.dt_07[21]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">胰腺</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td>{{list.dt_07[22]}}</td>
      <td>血清淀粉酶</td>
      <td>{{list.dt_07[23]}}</td>
      <td>{{list.dt_07[24]}}</td>
      <td>{{list.dt_07[25]}}</td>
      <td>{{list.dt_07[26]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_07[27]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="7">炎症反应</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="6">{{list.dt_07[28]}}</td>
      <td>{{list.dt_07[75]}}</td>
      <td>{{list.dt_07[30]}}</td>
      <td>{{list.dt_07[31]}}</td>
      <td>{{list.dt_07[32]}}</td>
      <td>{{list.dt_07[33]}}</td>
    </tr>
    <tr>
      <td>ASO</td>
      <td>{{list.dt_07[34]}}</td>
      <td>{{list.dt_07[35]}}</td>
      <td>{{list.dt_07[36]}}</td>
      <td>{{list.dt_07[37]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_07[38]}}</td>
      <td>{{list.dt_07[39]}}</td>
      <td>{{list.dt_07[40]}}</td>
      <td>{{list.dt_07[41]}}</td>
      <td>{{list.dt_07[42]}}</td>
    </tr>
    <tr>
      <td>类风湿因子定量</td>
      <td>{{list.dt_07[43]}}</td>
      <td>{{list.dt_07[44]}}</td>
      <td>{{list.dt_07[45]}}</td>
      <td>{{list.dt_07[46]}}</td>
    </tr>
    <tr>
      <td>CRP定量</td>
      <td>{{list.dt_07[47]}}</td>
      <td>{{list.dt_07[48]}}</td>
      <td>{{list.dt_07[49]}}</td>
      <td>{{list.dt_07[50]}}</td>
    </tr>
    <tr>
      <td>CRP判定</td>
      <td>{{list.dt_07[51]}}</td>
      <td>{{list.dt_07[52]}}</td>
      <td>{{list.dt_07[53]}}</td>
      <td>{{list.dt_07[54]}}</td>
    </tr>
    <tr>
      <td colspan="7">{{list.dt_07[55]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="4">肝炎</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="3">{{list.dt_07[56]}}</td>
      <td>HBs抗原</td>
      <td>{{list.dt_07[57]}}</td>
      <td>{{list.dt_07[58]}}</td>
      <td>{{list.dt_07[59]}}</td>
      <td>{{list.dt_07[60]}}</td>
    </tr>
    <tr>
      <td>HBs抗体</td>
      <td>{{list.dt_07[61]}}</td>
      <td>{{list.dt_07[62]}}</td>
      <td>{{list.dt_07[63]}}</td>
      <td>{{list.dt_07[64]}}</td>
    </tr>
    <tr>
      <td>HCV抗体</td>
      <td>{{list.dt_07[65]}}</td>
      <td>{{list.dt_07[66]}}</td>
      <td>{{list.dt_07[67]}}</td>
      <td>{{list.dt_07[68]}}</td>
    </tr>
    
    <tr>
      <td class="cellheader" rowspan="3">血清反应</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="2">{{list.dt_07[69]}}</td>
      <td>梅毒反应RPR</td>
      <td>{{list.dt_07[70]}}</td>
      <td>{{list.dt_07[71]}}</td>
      <td>{{list.dt_07[72]}}</td>
      <td>{{list.dt_07[73]}}</td>
    </tr>
    <tr>
      <td>TPLA</td>
      <td>{{list.dt_07[74]}}</td>
      <td>{{list.dt_07[75]}}</td>
      <td>{{list.dt_07[76]}}</td>
      <td>{{list.dt_07[77]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>