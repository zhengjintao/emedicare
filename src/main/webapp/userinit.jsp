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
initdata=[];
initdata.openid = '<%=request.getAttribute("openid")%>';
initdata.username = '<%=request.getAttribute("username")%>';
initdata.sex = '<%=request.getAttribute("sex")%>';
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
  list.lblLangs=['语言', 'Language', '言語設定'];
  list.lblNames=['姓名', 'Name', 'お名前'];
  list.lblMessages=['请输入姓名。', 'Please input your name.', 'お名前を入力してください。'];
  list.lblButtons=['申请登录', 'Login', 'ログイン申請'];
  list.lblwarnmsgs =['请务必输入真实姓名，否则可能无法通过审核。','Please input your real name for auth.','本名を入力していますか。'];
  list.lblinfomsgs =['确认真实姓名为：','Confirm your name:','名前確認：'];
  list.lblreturns=['重新输入', 'Cancel', 'Cancel'];
  list.lblconfirms=['确定', 'OK', 'OK'];
  list.langInx='0';
  list.username=initdata.username;
  list.sex=initdata.sex;
  list.openid=initdata.openid;
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
	 if(list.username ==null || list.username.length == 0){
	     list.errmessage = list.lblMessages[list.langInx];
	     $('#cmodal') .modal('show');
	     return;
	 }
	 
	 $('#almodal').modal({
			closable : false,
			onApprove : function() {
				window.location.href = 'userinit.do?mode=submit' + '&username=' + list.username + '&sex=' + list.sex +'&openid=' + list.openid;
			}

		}).modal('show');
  }
  
  list.onRadioChange = function(val) {
	  list.langInx = val;
	  list.lblLangSetting =list.lblLangs[list.langInx];
	  list.lblNameSetting =list.lblNames[list.langInx];
	  list.lblNameInput =list.lblMessages[list.langInx];
	  list.lblBtnname =list.lblButtons[list.langInx];
	  list.lblwarnmsg =list.lblwarnmsgs[list.langInx];
	  list.lblinfomsg =list.lblinfomsgs[list.langInx];
	  list.lblreturn =list.lblreturns[list.langInx];
	  list.lblconfirm =list.lblconfirms[list.langInx];
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
				<a class="ui large top attached label center aligned">{{list.lblLangSetting}}</a>
				<div class="ui form">
					<div class="inline fields">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" name="frequency" checked="checked" ng-click="list.onRadioChange(0)">
								<label>中文</label>
							</div>
						</div>
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" name="frequency" ng-click="list.onRadioChange(1)"> <label>English</label>
							</div>
						</div>
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" name="frequency" ng-click="list.onRadioChange(2)"> <label>日本語</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="ui segment">
				<a class="ui large top attached label center aligned">{{list.lblNameSetting}}</a>
				<div class="ui large transparent input">
					<input type="text" style="width: 250px"
						placeholder={{list.lblNameInput}} ng-model="list.username">
				</div>

			</div>
			
			<button class="fluid ui large blue button" ng-click="list.onItemClick()">{{list.lblBtnname}}</button>
		</div>
		<div class="column"></div>
	</div>
    <div id="almodal" class="ui small test modal transition hidden">
			<div class="content">
				<h4 style="color:red">{{list.lblwarnmsg}}</h4>
				<p>{{list.lblinfomsg}}{{list.username}}</p>
			</div>
			<div class="actions">
				<div class="ui negative button">{{list.lblreturn}}</div>
				<div class="ui positive right labeled icon button">
					{{list.lblconfirm}} <i class="checkmark icon"></i>
				</div>
			</div>
		</div>
</body>