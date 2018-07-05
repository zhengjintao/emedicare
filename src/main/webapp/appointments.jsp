<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>次回検査</title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script>
initdata=[];
initdata.langinx = <%=request.getAttribute("langinx")%>;
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
  list.langinx = initdata.langinx;
  
  list.recentList =  [
      {id:'00001', header:'检查通知－20180606', date:'2018年5月30日 9点30分', description:'请提前预约好时间，不能错过时间。', status:'未确认'}
      ];
  list.historyList =  [
	  {id:'00001', header:'检查通知－20180506', date:'2018年5月30日 9点30分', description:'请提前预约好时间，不能错过时间。', status:'未确认'},
	  {id:'00001', header:'检查通知－20180406', date:'2018年5月30日 9点00分', description:'请提前预约好时间，不能错过时间。', status:'已确认'}
      ];
  
  list.lblbtnoks = ['确定', 'OK', '確認'];
  list.lblheaders = ['履历', 'List', '履歴'];
  list.lblstatuss =['状态：', 'Status：', '状態：']
  
  list.setlabel = function() {
	  var laninx = this.langinx;
	  list.lblbtnok =list.lblbtnoks[laninx];
	  list.lblheader =list.lblheaders[laninx];
	  list.lblstatus = list.lblstatuss[laninx];
	}
  
  list.setlabel();
  
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
			<div class="ui centered cards">
				<div class="card" ng-repeat="eachitem in list.recentList">
					<div class="content">
						<!-- <img class="right floated mini ui image"
								src="/images/avatar/large/elliot.jpg"> -->
						<div class="header">{{eachitem.header}}</div>
						<div class="meta">{{eachitem.date}}</div>
						<div class="description">{{eachitem.description}}</div>
					</div>
					<div class="extra content">
						<div class="ui two buttons">
							<div class="ui basic green button">{{list.lblbtnok}}</div>
							<!-- <div class="ui basic red button">取消</div> -->
						</div>
					</div>
				</div>
			</div>

			<h4 class="ui horizontal divider header">
				<i class="bar chart icon"></i> {{list.lblheader}}
			</h4>
			<div class="ui centered cards">
				<div class="card" ng-repeat="eachitem in list.historyList">
					<div class="content">
						<!-- <img class="right floated mini ui image"
								src="/images/avatar/large/elliot.jpg"> -->
						<div class="header">{{eachitem.header}}</div>
						<div class="meta">{{eachitem.date}}</div>
						<div class="description">{{eachitem.description}}</div>
					</div>
					<div class="extra content">
						{{list.lblstatus}}{{eachitem.status}}
					</div>
				</div>
			</div>
		</div>
		<div class="column"></div>
	</div>

</body>