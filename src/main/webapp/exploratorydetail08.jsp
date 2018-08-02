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
	  list.dt_08 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList08");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_08[<%=i%>] = "<%=dataList.get(i)%>";
	   <%}%>
	   
	 /*  (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '08'};
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
  
  var item = list.sheets[7];
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
      <td class="cellheader" rowspan="13">乳房检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="12">{{list.dt_08[0]}}</td>
      <td>{{list.dt_08[1]}}</td>
      <td>{{list.dt_08[2]}}</td>
      <td>{{list.dt_08[3]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[4]}}</td>
      <td>{{list.dt_08[5]}}</td>
      <td>{{list.dt_08[6]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[7]}}</td>
      <td>{{list.dt_08[8]}}</td>
      <td>{{list.dt_08[9]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[10]}}</td>
      <td>{{list.dt_08[11]}}</td>
      <td>{{list.dt_08[12]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[13]}}</td>
      <td>{{list.dt_08[14]}}</td>
      <td>{{list.dt_08[15]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[16]}}</td>
      <td>{{list.dt_08[17]}}</td>
      <td>{{list.dt_08[18]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[19]}}</td>
      <td>{{list.dt_08[20]}}</td>
      <td>{{list.dt_08[21]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[22]}}</td>
      <td>{{list.dt_08[23]}}</td>
      <td>{{list.dt_08[24]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[25]}}</td>
      <td>{{list.dt_08[26]}}</td>
      <td>{{list.dt_08[27]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[28]}}</td>
      <td>{{list.dt_08[29]}}</td>
      <td>{{list.dt_08[30]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[31]}}</td>
      <td>{{list.dt_08[32]}}</td>
      <td>{{list.dt_08[33]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[34]}}</td>
      <td>{{list.dt_08[35]}}</td>
      <td>{{list.dt_08[36]}}</td>
    </tr>
    
    <tr>
      <td colspan="5"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="13">妇科检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="12">{{list.dt_08[37]}}</td>
      <td>{{list.dt_08[38]}}</td>
      <td>{{list.dt_08[39]}}</td>
      <td>{{list.dt_08[40]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[41]}}</td>
      <td>{{list.dt_08[42]}}</td>
      <td>{{list.dt_08[43]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[44]}}</td>
      <td>{{list.dt_08[45]}}</td>
      <td>{{list.dt_08[46]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[47]}}</td>
      <td>{{list.dt_08[48]}}</td>
      <td>{{list.dt_08[49]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[50]}}</td>
      <td>{{list.dt_08[51]}}</td>
      <td>{{list.dt_08[52]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[53]}}</td>
      <td>{{list.dt_08[54]}}</td>
      <td>{{list.dt_08[55]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[56]}}</td>
      <td>{{list.dt_08[57]}}</td>
      <td>{{list.dt_08[58]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[59]}}</td>
      <td>{{list.dt_08[60]}}</td>
      <td>{{list.dt_08[61]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[62]}}</td>
      <td>{{list.dt_08[63]}}</td>
      <td>{{list.dt_08[64]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[65]}}</td>
      <td>{{list.dt_08[66]}}</td>
      <td>{{list.dt_08[67]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[68]}}</td>
      <td>{{list.dt_08[69]}}</td>
      <td>{{list.dt_08[70]}}</td>
    </tr>
    <tr>
      <td>{{list.dt_08[71]}}</td>
      <td>{{list.dt_08[72]}}</td>
      <td>{{list.dt_08[73]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>