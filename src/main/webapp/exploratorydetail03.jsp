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

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script>

</script>

<script src="jquery/jquery-3.1.1.min.js"></script>
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
  list.errmessage ="";
  list.sheets = [
	  {'name' : '健診結果(问诊内容)', 'shortname' : '健診結果(一)', 'href': 'exploratorydetail.do'},
	  {'name' : '健診結果(基础项目)', 'shortname' : '健診結果(二)', 'href': 'exploratorydetail02.do'},
	  {'name' : '健診結果(尿检/肾/血常规)', 'shortname' : '健診結果(三)', 'href': 'exploratorydetail03.do'},
	  {'name' : '健診結果(胸部X线/脂质/肝功能检查)', 'shortname' : '健診結果(四)', 'href': 'exploratorydetail04.do'},
	  {'name' : '健診結果(糖尿病/痛风/心电图/便/眼睛)', 'shortname' : '健診結果(五)', 'href': 'exploratorydetail05.do'},
	  {'name' : '健診結果(消化管内视镜/胃活检/腹部超声/血沉)', 'shortname' : '健診結果(六)', 'href': 'exploratorydetail06.do'},
	  {'name' : '健診結果(肺功能/胰腺/炎症反应/肝炎/血清反应)', 'shortname' : '健診結果(七)', 'href': 'exploratorydetail07.do'},
	  {'name' : '健診結果(乳房检查/妇科检查)', 'shortname' : '健診結果(八)', 'href': 'exploratorydetail08.do'},
	  {'name' : '健診結果(肿瘤标志物/ABI/PWV/甲状腺超声/骨密度)', 'shortname' : '健診結果(九)', 'href': 'exploratorydetail09.do'},
	  {'name' : '健診結果(胸部CT/腹部CT/MRI/MRA/颈部超声)', 'shortname' : '健診結果(十)', 'href': 'exploratorydetail10.do'},
	  {'name' : '健診結果(选项)', 'shortname' : '选项', 'href': 'exploratorydetail11.do'},
	  {'name' : '综合判断', 'shortname' : '综合判断', 'href': 'exploratorydetail12.do'},
	  {'name' : '检查结果查询', 'shortname' : '检查结果查询', 'href': 'exploratorydetail13.do'},
	  {'name' : 'Spo２检测结果通知', 'shortname' : 'Spo２检测结果', 'href': 'exploratorydetail14.do'},
	  {'name' : '甲状腺功能检查报告书', 'shortname' : '甲状腺功能检查', 'href': 'exploratorydetail15.do'},
	  {'name' : '肿瘤标志物检查报告书', 'shortname' : '肿瘤标志物检查', 'href': 'exploratorydetail16.do'},
	  {'name' : '胃癌风险分级检查', 'shortname' : '胃癌风险分级检查', 'href': 'exploratorydetail17.do'},
	  {'name' : '血压脉搏检查解析结果', 'shortname' : '血压脉搏检查解析结果', 'href': 'exploratorydetail18.do'},
	  {'name' : '骨密度测定结果', 'shortname' : '骨密度测定结果', 'href': 'exploratorydetail19.do'},
	  {'name' : '检查报告(脳ドック)', 'shortname' : '脳ドック', 'href': 'exploratorydetail20.do'},
	  {'name' : '检查报告(颈动脉超声波)', 'shortname' : '颈动脉超声波', 'href': 'exploratorydetail21.do'},
	  {'name' : '检查报告(骨盆MRI)', 'shortname' : '骨盆MRI', 'href': 'exploratorydetail22.do'},
	  {'name' : '检查报告(心脏超声波)', 'shortname' : '心脏超声波', 'href': 'exploratorydetail23.do'}
	  ];
  
  (function(){
  	
  	$scope.url =  "companyinfoedit.do";
  	var postdata = {'mode':'list', 'companyid':list.companyid};
      $http(
  		{
  			method:"POST",
  			url:$scope.url,
  			data:postdata,
  			transformRequest:transFormFactory.transForm,
  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
  		}).then(function (result) {
  			list.onsalegoods = result.data.onsalegoods;
  			list.unsalegoods = result.data.unsalegoods;
          }).catch(function (result) {
          	list.message = "SORRY!エラーが発生しました。";
          	$('.ui.basic.modal') .modal('show');
          });
      
  })();
  
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
      <td class="cellheader" style="width:100px" rowspan="7">尿沉渣检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
     <td rowspan="6"></td>
      <td>尿糖（定性）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
     <tr>
      <td>尿蛋白（定性）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
     <tr>
      <td>尿胆原</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
     <tr>
      <td>尿PH</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
     <tr>
      <td>尿潜血</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
     <tr>
      <td>尿比重</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="4">尿沉渣检查</td>
      <td rowspan="4"></td>
      <td>尿沉渣白细胞</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>尿沉渣红细胞</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>尿沉渣（鳞状上皮）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>尿沉渣（肾小管上皮）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    
    <tr>
      <td class="cellheader" rowspan="7">肾</td>
      <td rowspan="7"></td>
      <td>肌酐</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>尿素氮</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>eGFR</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>钠（Na）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>钾（K）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>氯（Cl）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>钙（Ca）</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td colspan="9"></td>
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
      <td rowspan="8"></td>
      <td>白细胞计数</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
     <tr>
      <td>红细胞计数</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
     <tr>
      <td>血红蛋白</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>红细胞压积</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>平均红细胞体积</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>平均红细胞血红蛋白量</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>平均红细胞血红蛋白浓度</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>血小板计数</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>