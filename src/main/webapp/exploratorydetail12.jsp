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
	  list.dt_12 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList12");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_12[<%=i%>] = "<%=dataList.get(i)%>";
	   <%}%>
	  /* (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '12'};
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
  
  var item = list.sheets[11];
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
      <td class="cellheader">体检项目</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td>诊察所见</td>
      <td>{{list.dt_12[0]}}</td>
      <td>{{list.dt_12[1]}}</td>
      <td>{{list.dt_12[2]}}</td>
    </tr>
    <tr>
      <td>身体测量</td>
      <td>{{list.dt_12[9]}}</td>
      <td>{{list.dt_12[10]}}</td>
      <td>{{list.dt_12[11]}}</td>
    </tr>
    <tr>
      <td>血压</td>
      <td>{{list.dt_12[18]}}</td>
      <td>{{list.dt_12[19]}}</td>
      <td>{{list.dt_12[20]}}</td>
    </tr>
    <tr>
      <td>视力</td>
      <td>{{list.dt_12[27]}}</td>
      <td>{{list.dt_12[28]}}</td>
      <td>{{list.dt_12[29]}}</td>
    </tr>
    <tr>
      <td>听力</td>
      <td>{{list.dt_12[36]}}</td>
      <td>{{list.dt_12[37]}}</td>
      <td>{{list.dt_12[38]}}</td>
    </tr>
    <tr>
      <td>尿常规</td>
      <td>{{list.dt_12[45]}}</td>
      <td>{{list.dt_12[46]}}</td>
      <td>{{list.dt_12[47]}}</td>
    </tr>
    <tr>
      <td>肺功能</td>
      <td>{{list.dt_12[54]}}</td>
      <td>{{list.dt_12[55]}}</td>
      <td>{{list.dt_12[56]}}</td>
    </tr>
    <tr>
      <td>便检查</td>
      <td>{{list.dt_12[63]}}</td>
      <td>{{list.dt_12[64]}}</td>
      <td>{{list.dt_12[65]}}</td>
    </tr>
    <tr>
      <td>肝功能</td>
      <td>{{list.dt_12[72]}}</td>
      <td>{{list.dt_12[73]}}</td>
      <td>{{list.dt_12[74]}}</td>
    </tr>
    <tr>
      <td>肾功能</td>
      <td>{{list.dt_12[78]}}</td>
      <td>{{list.dt_12[79]}}</td>
      <td>{{list.dt_12[80]}}</td>
    </tr>
    <tr>
      <td>胰功能</td>
      <td>{{list.dt_12[84]}}</td>
      <td>{{list.dt_12[85]}}</td>
      <td>{{list.dt_12[86]}}</td>
    </tr>
    <tr>
      <td>脂质</td>
      <td>{{list.dt_12[90]}}</td>
      <td>{{list.dt_12[91]}}</td>
      <td>{{list.dt_12[92]}}</td>
    </tr>
    <tr>
      <td>痛风</td>
      <td>{{list.dt_12[96]}}</td>
      <td>{{list.dt_12[97]}}</td>
      <td>{{list.dt_12[98]}}</td>
    </tr>
    <tr>
      <td>血球</td>
      <td>{{list.dt_12[102]}}</td>
      <td>{{list.dt_12[103]}}</td>
      <td>{{list.dt_12[104]}}</td>
    </tr>
    <tr>
      <td>血清反应</td>
      <td>{{list.dt_12[3]}}</td>
      <td>{{list.dt_12[4]}}</td>
      <td>{{list.dt_12[5]}}</td>
    </tr>
    <tr>
      <td>血沉</td>
      <td>{{list.dt_12[12]}}</td>
      <td>{{list.dt_12[13]}}</td>
      <td>{{list.dt_12[14]}}</td>
    </tr>
    <tr>
      <td>糖尿病</td>
      <td>{{list.dt_12[21]}}</td>
      <td>{{list.dt_12[22]}}</td>
      <td>{{list.dt_12[23]}}</td>
    </tr>
    <tr>
      <td>炎症反应</td>
      <td>{{list.dt_12[30]}}</td>
      <td>{{list.dt_12[31]}}</td>
      <td>{{list.dt_12[32]}}</td>
    </tr>
    <tr>
      <td>肝炎</td>
      <td>{{list.dt_12[39]}}</td>
      <td>{{list.dt_12[40]}}</td>
      <td>{{list.dt_12[41]}}</td>
    </tr>
    <tr>
      <td>肿瘤标记物</td>
      <td>{{list.dt_12[48]}}</td>
      <td>{{list.dt_12[49]}}</td>
      <td>{{list.dt_12[50]}}</td>
    </tr>
    <tr>
      <td>病毒抗体</td>
      <td>{{list.dt_12[57]}}</td>
      <td>{{list.dt_12[58]}}</td>
      <td>{{list.dt_12[59]}}</td>
    </tr>
    <tr>
      <td>胸部</td>
      <td>{{list.dt_12[66]}}</td>
      <td>{{list.dt_12[67]}}</td>
      <td>{{list.dt_12[68]}}</td>
    </tr>
    <tr>
      <td>心电图</td>
      <td>{{list.dt_12[75]}}</td>
      <td>{{list.dt_12[76]}}</td>
      <td>{{list.dt_12[77]}}</td>
    </tr>
    <tr>
      <td>眼底所见</td>
      <td>{{list.dt_12[81]}}</td>
      <td>{{list.dt_12[82]}}</td>
      <td>{{list.dt_12[83]}}</td>
    </tr>
    <tr>
      <td>胃部内视镜</td>
      <td>{{list.dt_12[87]}}</td>
      <td>{{list.dt_12[88]}}</td>
      <td>{{list.dt_12[89]}}</td>
    </tr>
    <tr>
      <td>上腹部超声波</td>
      <td>{{list.dt_12[93]}}</td>
      <td>{{list.dt_12[94]}}</td>
      <td>{{list.dt_12[95]}}</td>
    </tr>
    <tr>
      <td>血沉</td>
      <td>{{list.dt_12[99]}}</td>
      <td>{{list.dt_12[100]}}</td>
      <td>{{list.dt_12[101]}}</td>
    </tr>
    <tr>
      <td>骨密度</td>
      <td>{{list.dt_12[105]}}</td>
      <td>{{list.dt_12[106]}}</td>
      <td>{{list.dt_12[107]}}</td>
    </tr>
    <tr>
      <td>乳房检查</td>
      <td>{{list.dt_12[6]}}</td>
      <td>{{list.dt_12[7]}}</td>
      <td>{{list.dt_12[8]}}</td>
    </tr>
    <tr>
      <td>妇科检查</td>
      <td>{{list.dt_12[15]}}</td>
      <td>{{list.dt_12[16]}}</td>
      <td>{{list.dt_12[17]}}</td>
    </tr>
    <tr>
      <td>ABI</td>
      <td>{{list.dt_12[24]}}</td>
      <td>{{list.dt_12[25]}}</td>
      <td>{{list.dt_12[26]}}</td>
    </tr>
    <tr>
      <td>胸部CT</td>
      <td>{{list.dt_12[33]}}</td>
      <td>{{list.dt_12[34]}}</td>
      <td>{{list.dt_12[35]}}</td>
    </tr>
    <tr>
      <td>腹部CT</td>
      <td>{{list.dt_12[42]}}</td>
      <td>{{list.dt_12[43]}}</td>
      <td>{{list.dt_12[44]}}</td>
    </tr>
    <tr>
      <td>尿沉渣</td>
      <td>{{list.dt_12[51]}}</td>
      <td>{{list.dt_12[52]}}</td>
      <td>{{list.dt_12[53]}}</td>
    </tr>
    <tr>
      <td>甲状腺超声波</td>
      <td>{{list.dt_12[60]}}</td>
      <td>{{list.dt_12[61]}}</td>
      <td>{{list.dt_12[62]}}</td>
    </tr>
    <tr>
      <td>甲状腺检查</td>
      <td>{{list.dt_12[69]}}</td>
      <td>{{list.dt_12[70]}}</td>
      <td>{{list.dt_12[71]}}</td>
    </tr>
  </tbody>
</table>

 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td rowspan="3"></td>
      <td rowspan="3">判定区分</td>
      <td>A：无异常 </td>
      <td>C1: 3个月后复查</td>
      <td>D2：要详细检查</td>
    </tr>
    <tr>
      <td>B：虽然发现有轻度异常，但是对日常生活无影响 </td>
      <td>C2: 6个月后复查</td>
      <td>D2：要详细检查</td>
    </tr>
    <tr>
      <td>C：有轻度异常，需要改善生活习惯，或动态观察</td>
      <td>C2: 12个月后复查</td>
      <td>E: 正在治疗中</td>
    </tr>
  </tbody>
</table>

<table class="ui unstackable celled structured table">
  <tbody>
  <tr>
      <td class="cellheader">代谢综合症判定</td>
      <td>{{list.dt_12[108]}}</td>
      <td class="cellheader">保健指导程度</td>
      <td>{{list.dt_12[109]}}</td>
    </tr>
  </tbody>
  </table>
  
  <table class="ui unstackable celled structured table">
  <tbody>
     <tr>
      <td class="cellheader">指示事项</td>
    </tr>
    <tr>
      <td>{{list.dt_12[110]}}</td>
    </tr>
  </tbody>
  </table>
</div>
  </div>
</div>
</body>