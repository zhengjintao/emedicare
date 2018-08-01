<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title></title>
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
  list.lblNames=['姓名', 'Name', 'お名前'];
  list.lblMessages=['请输入姓名。', 'Please input your name.', 'お名前を入力してください。'];
  list.lblButtons=['登录', 'Login', 'ログイン'];
  list.name="本田慶応";
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
        	  list.message = "SORRY!エラーが発生しました。";
          	$('.ui.basic.modal') .modal('show');
          });
  }
  
  list.onItemClick = function() {
	 if(list.name ==null || list.name.length == 0){
	     list.errmessage = list.lblMessages[list.langInx];
	     $('#cmodal') .modal('show');
	     return;
	 }
	 
	 window.location.href = 'userinit.do?mode=submit' + '&langkbn=' + list.langInx + '&name=' + list.name;
  }
  
  list.onRadioChange = function(val) {
	  list.langInx = val;
	  list.lblNameSetting =list.lblNames[list.langInx];
	  list.lblNameInput =list.lblMessages[list.langInx];
	  list.lblBtnname =list.lblButtons[list.langInx];
	}
  
  list.onRadioChange(0);
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
			<div style="margin-top: 10px"></div>
			<div class="ui segment">
				<a class="ui large top attached label center aligned">{{list.lblNameSetting}}</a>
				<div class="ui large transparent input">
					<input type="text" style="width: 250px"
						placeholder={{list.lblNameInput}} ng-model="list.name">
				</div>

			</div>
			
			<button class="fluid ui large button" ng-click="list.onItemClick()">{{list.lblBtnname}}</button>
		</div>
		<div class="column"></div>
	</div>

</body>