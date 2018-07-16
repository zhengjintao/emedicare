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
  list.companyid="000000001"
  list.name ="株式会社";
  list.shortname="BWC";
  list.label ="株式会社tesut";
  list.telnum="080-01";
  list.address ="新书";
  list.site="www.baidu.com";
  list.types =  [
      {id:'00001', text:'learn AngularJS'}
      ];
  list.onsalegoods =  [
      {id:'00001', text:'learn AngularJS'}
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
  
  list.submit = function() {
  	$scope.url =  "companyinfoedit.do";
  	var postdata = {'mode':'submit'};
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
          	orderList.message = "SORRY!エラーが発生しました。";
          	$('.ui.basic.modal') .modal('show');
          });
  }
  
  list.onitemclick = function() {
	  window.location.href = 'home.do';
  }
  
  list.showsidebar = function(){
	  $('.ui.sidebar').sidebar('toggle')
	;
  }
  
  list.hidesidebar = function(){
	  $('.ui.sidebar').sidebar('hide')
	;
  }
});
</script>

</head>
<body ng-controller="ListController as list">
<div class="ui top attached demo menu">
  <a class="item" ng-click="list.showsidebar()">
    <i class="sidebar icon"></i>
    更多
  </a>
  <div class="item">
  健診結果報告書１
  </div>
</div>
<div class="ui bottom attached segment pushable">

  <div class="ui sidebar  vertical menu">
    <a class="item" ng-click="list.hidesidebar()">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
    <a class="item">健診結果報告書１</a>
  </div>
  <div class="pusher">
  <div class="ui segment">
				<ul class="ui large list">
					<li>血液检查</li>
					<li>尿检</li>
					<li>基本项目
						<ul>
							<li>体重：173cm</li>
							<li>身高：65kg</li>
							<li>血压：100～130kp</li>
						</ul>
					</li>
					<li>其他</li>
				</ul>

			</div>

  </div>
</div>
</body>