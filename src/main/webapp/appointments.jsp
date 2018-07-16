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
  list.lblconfirmstatuss =['状态：已确认', 'Status：Unconfirmed', '状態：確認済']
  list.lblstatuss =['状态：未确认', 'Status：Confirmed', '状態：未確認']
  
  list.setlabel = function() {
	  var laninx = this.langinx;
	  list.lblbtnok =list.lblbtnoks[laninx];
	  list.lblheader =list.lblheaders[laninx];
	  list.lblstatus = list.lblstatuss[laninx];
	  list.lblconfirmstatus = list.lblconfirmstatuss[laninx];
	  list.lblstatus = list.lblstatuss[laninx];
	}
  
  list.setlabel();
  
  list.listdata = function() {
	  $scope.url =  "appointments.do";
	  	var postdata = {'mode':'list'};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.recentList = result.data.recentList;
	  			list.historyList = result.data.historyList;
	          }).catch(function (result) {
	          	orderList.message = "SORRY!エラーが発生しました。";
	          	$('.ui.basic.modal') .modal('show');
	          });
  }
  
  list.listdata();
  list.onitemclick = function(id) {
	  alert(id);
	  $scope.url =  "appointments.do";
	  	var postdata = {'mode':'submit', 'id' : id};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.recentList = result.data.recentList;
	  			list.historyList = result.data.historyList;
	          }).catch(function (result) {
	          	orderList.message = "SORRY!エラーが発生しました。";
	          	$('.ui.basic.modal') .modal('show');
	          });
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
	    <div class="column"  ng-show="list.recentList.length == 0 && list.hisotryList.length == 0">
	      次回検査予定がありません
	    </div>
		<div class="column"  ng-show="list.recentList.length > 0 || list.hisotryList.length > 0">
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
					<div class="extra content" ng-show = "eachitem.status == '0'">
						<div class="ui two buttons">
							<button class="ui basic green button" ng-click="list.onitemclick(eachitem.id)">{{list.lblbtnok}}</button>
							<!-- <div class="ui basic red button">取消</div> -->
						</div>
					</div>
					<div class="extra content" ng-show = "eachitem.status == '1'">
						{{list.lblconfirmstatus}}
					</div>
				</div>
			</div>

			<h4 class="ui horizontal divider header" ng-show="list.historyList.length >0">
				<i class="bar chart icon"></i> {{list.lblheader}}
			</h4>
			<div class="ui centered cards" ng-show="list.historyList.length >0">
				<div class="card" ng-repeat="eachitem in list.historyList">
					<div class="content">
						<!-- <img class="right floated mini ui image"
								src="/images/avatar/large/elliot.jpg"> -->
						<div class="header">{{eachitem.header}}</div>
						<div class="meta">{{eachitem.date}}</div>
						<div class="description">{{eachitem.description}}</div>
					</div>
					<div class="extra content" ng-show="eachitem.status == 0">
						{{list.lblstatus}}
					</div>
					<div class="extra content"ng-show="eachitem.status == 1">
						{{list.lblconfirmstatus}}
					</div>
				</div>
			</div>
		</div>
		<div class="column"></div>
	</div>

</body>