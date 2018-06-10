<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>Home</title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script src="angularjs/angular.min.js"></script>
<script>

</script>
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
  
  list.onitemclick = function(id) {
	  var redurl = 'home.do';
	  if(id==0){
		  redurl = 'personalinfo.do';
	  }else if(id==1){
		  redurl = 'exploratory.do';
	  }else if(id==2){
		  redurl = 'visits.do';
	  }else if(id==3){
		  redurl = 'appointments.do';
	  }else if(id==4){
		  redurl = 'langsetting.do';
	  }else if(id==5){
		  redurl = 'http://www.google.co.jp';
	  }
	  window.location.href = redurl;
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
			<div class="ui segment">
				<a class="ui large top attached label center aligned">個人情報</a>
				<div class="ui large middle aligned selection divided list">
					<div class="item" ng-click="list.onitemclick(0)">
					   
						<div class="right floated content" style="margin-top:10px">
							<i class="chevron right icon"></i>
						</div>
						<img class="ui avatar image" src="assets/images/christian.jpg">
						<div class="content">
							<div class="header">U000001</div>
							<div class="description">本田慶応</div>
						</div>
					</div>
				</div>

			</div>
			<div class="ui segment">
				<a class="ui large top attached label center aligned">サービス</a>
				<div class="ui large middle aligned selection divided list">
					<div class="item" ng-click="list.onitemclick(1)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="clone outline icon"></i>
						<div class="content">
							<a class="header">診査履歴</a>
						</div>
					</div>
					<div class="item" ng-click="list.onitemclick(2)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="edit outline icon"></i>
						<div class="content">
							<a class="header">通院履歴</a>
						</div>
					</div>
					<div class="item" ng-click="list.onitemclick(3)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="calendar alternate icon"></i>
						<div class="content">
							<a class="header">次回検査</a>
						</div>
					</div>
				</div>
			</div>
			<div class="ui segment">
				<a class="ui large top attached label center aligned">システム設定</a>
				<div class="ui large middle aligned selection divided list">
					<div class="item" ng-click="list.onitemclick(4)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="sun outline icon"></i>
						<div class="content">
							<a class="header">言語設定</a>
						</div>
					</div>
					
					<div class="item" ng-click="list.onitemclick(5)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="home icon"></i>
						<div class="content">
							<a class="header">公式サイト</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="column"></div>
	</div>

</body>