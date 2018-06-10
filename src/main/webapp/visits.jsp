<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>通院履歴</title>
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
  list.historyList =  [
      {id:'00001', date:'20180817', text:'肠胃炎'},
      {id:'00002', date:'20180729', text:'拉肚子'},
      {id:'00003', date:'20180603', text:'严重流感'}
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
  
  list.onitemedit = function(id) {
	  alert(id);
  }
  
  list.onitemdelete = function(id) {
	  alert(id);
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
				<a class="ui large top attached label center aligned">通院履歴</a>
				<div class="ui large form">
					<div class="inline field">
						<label style="width: 60px">日付</label> <input type="text"
							placeholder="Full Name" value="20180512">
					</div>
					
					<div class="inline field">
						<label style="width: 60px">原因</label> <input type="text"
							placeholder="Full Name" value="急性肠胃炎">
					</div>
					<div class="inline field">
						<label style="width: 60px">期間</label> <input type="text"
							placeholder="Full Name" value="住院两周">
					</div>
					
					<button class="fluid ui large button" ng-click="list.onItemClick()">保存</button>
				</div>

			</div>
			
			<div class="ui segment">
				<a class="ui large top attached label center aligned">履歴一覧</a>
				<div class="ui large middle aligned divided list">
					<div class="item" ng-repeat="eachitem in list.historyList">
						<div class="right floated content">
							<i class="edit icon" ng-click="list.onitemedit(eachitem.id)"></i>
							<i class="window close outline icon" ng-click="list.onitemdelete(eachitem.id)"></i>
						</div>
						<div class="content">
							<div class="header">{{eachitem.date}}</div>
							<div class="description">{{eachitem.text}}</div>
						</div>
						
					</div>
				</div>

			</div>
		</div>
		<div class="column"></div>
	</div>

</body>