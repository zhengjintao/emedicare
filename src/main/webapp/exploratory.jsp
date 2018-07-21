<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>診査履歴</title>
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
  list.records =  [
      {id:'E0000001', text:'診査记录20170514'},
      {id:'E0000001', text:'診査记录20170514'},
      {id:'E0000001', text:'診査记录20170514'},
      {id:'E0000001', text:'診査记录20170514'}
      ];
  (function(){
  	$scope.url =  "exploratory.do";
  	var postdata = {'mode':'list'};
      $http(
  		{
  			method:"POST",
  			url:$scope.url,
  			data:postdata,
  			transformRequest:transFormFactory.transForm,
  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
  		}).then(function (result) {
  			//list.records = result.data.records;
          }).catch(function (result) {
          	list.message = "SORRY!エラーが発生しました。";
          	$('.ui.basic.modal') .modal('show');
          });
      
  })();
  
  list.onitemclick = function(item) {
	  window.location.href = 'exploratorydetail.do?expid=' + item.id +"&name=" + item.text;
  }
});
</script>

</head>
<body ng-controller="ListController as list">
	<div id="cmodal" class="ui small test modal transition hidden">
		<i class="close icon"></i>
		<div class="content">
			<p id="errmsg">{{list.errmessage}}</p>
		</div>
	</div>
	<div class="ui one column grid container">
		<div class="column">
			<div style="margin-top:10px"></div>
			<a href="home.do"><i class="angle left icon"></i>返回主页</a>
			<div class="ui segment">
				<div class="ui large top attached label center aligned">診査履歴</div>
				<div class="ui large middle aligned selection divided list">
					<div class="item"  ng-repeat="eachitem in list.records" ng-click="list.onitemclick(eachitem)">
						<div class="content">
							<a class="header">{{eachitem.text}}</a>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="column"></div>
	</div>

</body>