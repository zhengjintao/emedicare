<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>言語設定</title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script>
initdata=[];
initdata.langinx = '<%=request.getAttribute("langinx")%>';
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
  list.langinx = initdata.langinx;
  list.lblhearders = ['语言设置', 'Language', '言語設定'];
  list.lblheader="";
  
  list.setlabel = function() {
	  var laninx = this.langinx;
	  list.lblheader =list.lblhearders[laninx];
	}
  
  list.setlabel();
  
  list.onRadioChange = function() {
	  list.setlabel();
  }
  
  list.onItemClick = function() {
	  window.location.href = 'langsetting.do?mode=submit&langinx=' + list.langinx;
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
			<div style="margin-top: 10px"></div>
			<div class="ui segment">
				<a class="ui large top attached label center aligned">{{list.lblheader}}</a>
				<div class="ui large form">
					<div class="grouped fields">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" value="0" ng-model="list.langinx" ng-click="list.onRadioChange()"> <label>中文</label>
							</div>
						</div>
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" value="1" ng-model="list.langinx" ng-click="list.onRadioChange()"> <label>English</label>
							</div>
						</div>
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" value="2" ng-model="list.langinx" ng-click="list.onRadioChange()"> <label>日本語</label>
							</div>
						</div>
						<button class="fluid ui large button" ng-click="list.onItemClick()">OK</button>
					</div>
				</div>

			</div>
		</div>
		<div class="column"></div>
	</div>

</body>