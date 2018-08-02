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
	  list.dt_11 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList11");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_11[<%=i%>] = "<%=dataList.get(i)%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '11'};
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
	  
  var item = list.sheets[10];
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
      <td class="cellheader" rowspan="16">选项</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="15">{{list.dt_11[0]}}</td>
      <td>血沉（60分）</td>
      <td>{{list.dt_11[1]}}</td>
      <td>{{list.dt_11[2]}}</td>
      <td>{{list.dt_11[3]}}</td>
      <td>{{list.dt_11[4]}}</td>
    </tr>
    <tr>
      <td>血沉（120分）</td>
      <td>{{list.dt_11[5]}}</td>
      <td>{{list.dt_11[6]}}</td>
      <td>{{list.dt_11[7]}}</td>
      <td>{{list.dt_11[8]}}</td>
    </tr>
    <tr>
      <td>幽门螺旋杆菌抗体</td>
      <td>{{list.dt_11[9]}}</td>
      <td>{{list.dt_11[10]}}</td>
      <td>{{list.dt_11[11]}}</td>
      <td>{{list.dt_11[12]}}</td>
    </tr>
    <tr>
      <td>Rh血型</td>
      <td>{{list.dt_11[13]}}</td>
      <td>{{list.dt_11[14]}}</td>
      <td>{{list.dt_11[15]}}</td>
      <td>{{list.dt_11[16]}}</td>
    </tr>
    <tr>
      <td>ABO血型</td>
      <td>{{list.dt_11[17]}}</td>
      <td>{{list.dt_11[18]}}</td>
      <td>{{list.dt_11[19]}}</td>
      <td>{{list.dt_11[20]}}</td>
    </tr>
    <tr>
      <td>TSH</td>
      <td>{{list.dt_11[21]}}</td>
      <td>{{list.dt_11[22]}}</td>
      <td>{{list.dt_11[23]}}</td>
      <td>{{list.dt_11[24]}}</td>
    </tr>
    <tr>
      <td>FT4</td>
      <td>{{list.dt_11[25]}}</td>
      <td>{{list.dt_11[26]}}</td>
      <td>{{list.dt_11[27]}}</td>
      <td>{{list.dt_11[28]}}</td>
    </tr>
    <tr>
      <td>FT3</td>
      <td>{{list.dt_11[29]}}</td>
      <td>{{list.dt_11[30]}}</td>
      <td>{{list.dt_11[31]}}</td>
      <td>{{list.dt_11[32]}}</td>
    </tr>
    <tr>
      <td>胃蛋白酶原</td>
      <td>{{list.dt_11[33]}}</td>
      <td>{{list.dt_11[34]}}</td>
      <td>{{list.dt_11[35]}}</td>
      <td>{{list.dt_11[36]}}</td>
    </tr>
    <tr>
      <td>CK（CPK）</td>
      <td>{{list.dt_11[37]}}</td>
      <td>{{list.dt_11[38]}}</td>
      <td>{{list.dt_11[39]}}</td>
      <td>{{list.dt_11[40]}}</td>
    </tr>
    <tr>
      <td>咳痰细胞诊</td>
      <td>{{list.dt_11[41]}}</td>
      <td>{{list.dt_11[42]}}</td>
      <td>{{list.dt_11[43]}}</td>
      <td>{{list.dt_11[44]}}</td>
    </tr>
    <tr>
      <td>BNP</td>
      <td>{{list.dt_11[45]}}</td>
      <td>{{list.dt_11[46]}}</td>
      <td>{{list.dt_11[47]}}</td>
      <td>{{list.dt_11[48]}}</td>
    </tr>
    <tr>
      <td>QFT（判定）</td>
      <td>{{list.dt_11[49]}}</td>
      <td>{{list.dt_11[50]}}</td>
      <td>{{list.dt_11[51]}}</td>
      <td>{{list.dt_11[52]}}</td>
    </tr>
    <tr>
      <td>QFT（TB抗原）</td>
      <td>{{list.dt_11[53]}}</td>
      <td>{{list.dt_11[54]}}</td>
      <td>{{list.dt_11[55]}}</td>
      <td>{{list.dt_11[56]}}</td>
    </tr>
    <tr>
      <td>HPV-DNA（HL）</td>
      <td>{{list.dt_11[57]}}</td>
      <td>{{list.dt_11[58]}}</td>
      <td>{{list.dt_11[59]}}</td>
      <td>{{list.dt_11[60]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>