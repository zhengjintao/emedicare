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
  list.dt_03 = new Array();
  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList03");%>;
  <%for (int i = 0; i < dataList.size(); i++) {%>  
       list.dt_03[<%=i%>] = "<%=dataList.get(i)%>";
   <%}%>
   
  /* (function(){
	  $scope.url =  "exploratorydetail.do";
	  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '03'};
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
  
  var item = list.sheets[2];
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
      <td class="cellheader" style="width:100px" rowspan="7">尿常规检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
     <td rowspan="6">{{list.dt_03[0]}}</td>
      <td>尿糖（定性）</td>
      <td>{{list.dt_03[1]}}</td>
      <td>{{list.dt_03[2]}}</td>
      <td>{{list.dt_03[3]}}</td>
      <td>{{list.dt_03[4]}}</td>
    </tr>
     <tr>
      <td>尿蛋白（定性）</td>
      <td>{{list.dt_03[5]}}</td>
      <td>{{list.dt_03[6]}}</td>
      <td>{{list.dt_03[7]}}</td>
      <td>{{list.dt_03[8]}}</td>
    </tr>
     <tr>
      <td>尿胆原</td>
      <td>{{list.dt_03[9]}}</td>
      <td>{{list.dt_03[10]}}</td>
      <td>{{list.dt_03[11]}}</td>
      <td>{{list.dt_03[12]}}</td>
    </tr>
     <tr>
      <td>尿PH</td>
      <td>{{list.dt_03[13]}}</td>
      <td>{{list.dt_03[14]}}</td>
      <td>{{list.dt_03[15]}}</td>
      <td>{{list.dt_03[16]}}</td>
    </tr>
     <tr>
      <td>尿潜血</td>
      <td>{{list.dt_03[17]}}</td>
      <td>{{list.dt_03[18]}}</td>
      <td>{{list.dt_03[19]}}</td>
      <td>{{list.dt_03[20]}}</td>
    </tr>
     <tr>
      <td>尿比重</td>
      <td>{{list.dt_03[21]}}</td>
      <td>{{list.dt_03[22]}}</td>
      <td>{{list.dt_03[23]}}</td>
      <td>{{list.dt_03[24]}}</td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="4">尿沉渣检查</td>
      <td rowspan="4">{{list.dt_03[25]}}</td>
      <td>尿沉渣白细胞</td>
      <td>{{list.dt_03[26]}}</td>
      <td>{{list.dt_03[27]}}</td>
      <td>{{list.dt_03[28]}}</td>
      <td>{{list.dt_03[29]}}</td>
    </tr>
    <tr>
      <td>尿沉渣红细胞</td>
      <td>{{list.dt_03[30]}}</td>
      <td>{{list.dt_03[31]}}</td>
      <td>{{list.dt_03[32]}}</td>
      <td>{{list.dt_03[33]}}</td>
    </tr>
    <tr>
      <td>尿沉渣（鳞状上皮）</td>
      <td>{{list.dt_03[34]}}</td>
      <td>{{list.dt_03[35]}}</td>
      <td>{{list.dt_03[36]}}</td>
      <td>{{list.dt_03[37]}}</td>
    </tr>
    <tr>
      <td>尿沉渣（肾小管上皮）</td>
      <td>{{list.dt_03[38]}}</td>
      <td>{{list.dt_03[39]}}</td>
      <td>{{list.dt_03[40]}}</td>
      <td>{{list.dt_03[41]}}</td>
    </tr>
    
    <tr>
      <td class="cellheader" rowspan="7">肾</td>
      <td rowspan="7">{{list.dt_03[42]}}</td>
      <td>肌酐</td>
      <td>{{list.dt_03[43]}}</td>
      <td>{{list.dt_03[44]}}</td>
      <td>{{list.dt_03[45]}}</td>
      <td>{{list.dt_03[46]}}</td>
    </tr>
    <tr>
      <td>尿素氮</td>
      <td>{{list.dt_03[47]}}</td>
      <td>{{list.dt_03[48]}}</td>
      <td>{{list.dt_03[49]}}</td>
      <td>{{list.dt_03[50]}}</td>
    </tr>
    <tr>
      <td>eGFR</td>
      <td>{{list.dt_03[51]}}</td>
      <td>{{list.dt_03[52]}}</td>
      <td>{{list.dt_03[53]}}</td>
      <td>{{list.dt_03[54]}}</td>
    </tr>
    <tr>
      <td>钠（Na）</td>
      <td>{{list.dt_03[55]}}</td>
      <td>{{list.dt_03[56]}}</td>
      <td>{{list.dt_03[57]}}</td>
      <td>{{list.dt_03[58]}}</td>
    </tr>
    <tr>
      <td>钾（K）</td>
      <td>{{list.dt_03[59]}}</td>
      <td>{{list.dt_03[60]}}</td>
      <td>{{list.dt_03[61]}}</td>
      <td>{{list.dt_03[62]}}</td>
    </tr>
    <tr>
      <td>氯（Cl）</td>
      <td>{{list.dt_03[63]}}</td>
      <td>{{list.dt_03[64]}}</td>
      <td>{{list.dt_03[65]}}</td>
      <td>{{list.dt_03[66]}}</td>
    </tr>
    <tr>
      <td>钙（Ca）</td>
      <td>{{list.dt_03[67]}}</td>
      <td>{{list.dt_03[68]}}</td>
      <td>{{list.dt_03[69]}}</td>
      <td>{{list.dt_03[70]}}</td>
    </tr>
    <tr>
      <td colspan="9">{{list.dt_03[71]}}</td>
    </tr>
  </tbody>
</table>

<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="9">血常规</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="8">{{list.dt_03[72]}}</td>
      <td>白细胞计数</td>
      <td>{{list.dt_03[73]}}</td>
      <td>{{list.dt_03[74]}}</td>
      <td>{{list.dt_03[75]}}</td>
      <td>{{list.dt_03[76]}}</td>
    </tr>
     <tr>
      <td>红细胞计数</td>
      <td>{{list.dt_03[77]}}</td>
      <td>{{list.dt_03[78]}}</td>
      <td>{{list.dt_03[79]}}</td>
      <td>{{list.dt_03[80]}}</td>
    </tr>
     <tr>
      <td>血红蛋白</td>
      <td>{{list.dt_03[81]}}</td>
      <td>{{list.dt_03[82]}}</td>
      <td>{{list.dt_03[83]}}</td>
      <td>{{list.dt_03[84]}}</td>
    </tr>
    <tr>
      <td>红细胞压积</td>
      <td>{{list.dt_03[85]}}</td>
      <td>{{list.dt_03[86]}}</td>
      <td>{{list.dt_03[87]}}</td>
      <td>{{list.dt_03[88]}}</td>
    </tr>
    <tr>
      <td>平均红细胞体积</td>
      <td>{{list.dt_03[89]}}</td>
      <td>{{list.dt_03[90]}}</td>
      <td>{{list.dt_03[91]}}</td>
      <td>{{list.dt_03[92]}}</td>
    </tr>
    <tr>
      <td>平均红细胞血红蛋白量</td>
      <td>{{list.dt_03[93]}}</td>
      <td>{{list.dt_03[94]}}</td>
      <td>{{list.dt_03[95]}}</td>
      <td>{{list.dt_03[96]}}</td>
    </tr>
    <tr>
      <td>平均红细胞血红蛋白浓度</td>
      <td>{{list.dt_03[97]}}</td>
      <td>{{list.dt_03[98]}}</td>
      <td>{{list.dt_03[99]}}</td>
      <td>{{list.dt_03[100]}}</td>
    </tr>
    <tr>
      <td>血小板计数</td>
      <td>{{list.dt_03[101]}}</td>
      <td>{{list.dt_03[102]}}</td>
      <td>{{list.dt_03[103]}}</td>
      <td>{{list.dt_03[104]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>