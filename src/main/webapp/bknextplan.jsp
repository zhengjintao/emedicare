<html ng-app="listApp">
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script src="angularjs/angular.min.js"></script>

<script type="text/javascript">
  activeitem="#item03";
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
  list.message ="";
  list.content = "";
  list.noticedate ="";
  list.userinfo={};
  list.userlist = []
  list.appointlist=[
	  {'userid':'U0000002' , 'username':'本田慶応' , 'date':'2018-09-08' , 'content':'予定の日付に病院に来てください。' , 'status':'未確認' }];
  
  list.historylist=[
	  {'userid':'U0000002' , 'username':'本田慶応' , 'date':'2018-09-08' , 'content':'予定の日付に病院に来てください。' , 'status':'確認済' }];
  
  list.onitemclick = function (){
	  if(this.content == null || this.content.length == 0){
		 this.message = "通知内容は入力必須です。";
         $('#cmodal') .modal('show');
         return;
	  }
	  
	  if(this.noticedate == null || this.noticedate.length == 0){
			 this.message = "日付は入力必須です。";
	         $('#cmodal') .modal('show');
	         return;
		  }
	  
	  $scope.url =  "bknextplan.do";
	  	var postdata = {'mode':'submit', 'userid': list.userinfo.userid, 'date': list.getnoticedate(), 'content' :list.content};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.historylist = result.data.historylist;
	  			list.appointlist = result.data.appointlist;
	  			list.content = "";
	  			list.message = " 保存しました。";
	          	$('#cmodal') .modal('show');
	          }).catch(function (result) {
	          	list.message = "SORRY!エラーが発生しました。";
	          	$('#cmodal') .modal('show');
	          });
  };
  
  (function(){
	  	$scope.url =  "bknextplan.do";
	  	var postdata = {'mode':'list'};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.userlist = result.data.userlist;
	  			list.historylist = result.data.historylist;
	  			list.appointlist = result.data.appointlist;
	  			list.userinfo=list.userlist[0];
	          }).catch(function (result) {
	          	list.message = "SORRY!エラーが発生しました。";
	          	$('#cmodal') .modal('show');
	          });
	      
	  })();
  
  list.getnoticedate = function(){
	  var dt = list.noticedate;
	  var y = dt.getFullYear();
	  var m = ("00" + (dt.getMonth()+1)).slice(-2);
	  var d = ("00" + dt.getDate()).slice(-2);
	  var result = y + "-" + m + "-" + d;
	  return result;
	}
});
</script>

<body ng-controller="ListController as list">

　　　<div id="cmodal" class="ui small test modal transition hidden">
		<i class="close icon"></i>
		<div class="content">
			<p id="errmsg">{{list.message}}</p>
		</div>
	</div>
	<div style="width:80%; margin-left: auto; margin-right: auto;margin-top:-20px;">
		
	<jsp:include page="bkheader.jsp" />
			<div class="ui attached segment">
			<div class="ui form">
				<div class="three fields">
					<div class="field">
						<label>通知ユーザ</label> 
						<select class="ui dropdown" ng-model="list.userinfo" ng-options="eachitem.username+'('+ eachitem.userid +')' for eachitem in list.userlist">
						</select>
					</div>
					<div class="field">
						<label>日付</label> <input type="date" ng-model="list.noticedate">
					</div>
				</div>
				<div class="field">
					<label>通知内容</label>
					<textarea ng-model="list.content"></textarea>
				</div>
			</div>

			<div class="ui middle aligned divided list">
				<div class="item">
					<button class="ui active blue button" ng-click ="list.onitemclick()">
						<i class="icon user"></i> 通知
					</button>
				</div>
			</div>
		</div>
		<table class="ui unstackable celled structured table" style="margin-top: 5px">
			<tbody>
				<tr bgcolor="#FAFAFA" height="30px">
					<th width="20%" style="text-align: center">ユーザ名前</th>
					<th width="20%" style="text-align: center">日付</th>
					<th width="40%" style="text-align: center">お知らせ内容</th>
					<th width="20%" style="text-align: center">ユーザ確認状態</th>
				</tr>
				<tr ng-repeat="eachitem in list.appointlist">
					<td id="week0"><a href=bkhistorylist.do?userid={{eachitem.userid}}>{{eachitem.username}}</a></td>
					<td>{{eachitem.date}}</td>
					<td>{{eachitem.content}}</td>
					<td ng-show="eachitem.status=='0'">未確認</td>
					<td ng-show="eachitem.status=='1'">確認済</td>
				</tr>
				
			</tbody>
		</table>
		<h4 class="ui horizontal divider header">
				<i class="bar chart icon"></i> 過去検査お知らせ
		</h4>
		<table class="ui unstackable celled structured table" style="margin-top: 5px">
			<tbody>
				<tr ng-repeat="eachitem in list.historylist">
					<td width="20%" id="week0"><a href=bkhistorylist.do?userid={{eachitem.userid}}>{{eachitem.username}}</a></td>
					<td width="20%">{{eachitem.date}}</td>
					<td width="40%">{{eachitem.content}}</td>
					<td width="20%" ng-show="eachitem.status=='0'">未確認</td>
					<td width="20%" ng-show="eachitem.status=='1'">確認済</td>
				</tr>
				
			</tbody>
		</table>
		
		<div class="column"></div>
	</div>
</body>
</html>
