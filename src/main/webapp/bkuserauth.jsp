<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
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
  activeitem="#item04";
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
  list.userinfolist = [];
  list.normaluserlist = [];
  
  (function(){
	  	$scope.url =  "bkuserauth.do";
	  	var postdata = {'mode':'list'};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.userinfolist = result.data.userinfolist;
	  			list.normaluserlist = result.data.normaluserlist;
	          }).catch(function (result) {
	          	list.message = "SORRY!エラーが発生しました。";
	          	$('#cmodal') .modal('show');
	          });
	      
	  })();
  
  list.itemsave = function(userid){
	  $scope.url =  "bkuserauth.do";
	  	var postdata = {'mode':'submit', 'userid':userid};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.userinfolist = result.data.userinfolist;
	  			list.normaluserlist = result.data.normaluserlist;
	          }).catch(function (result) {
	          	list.message = "SORRY!エラーが発生しました。";
	          	$('#cmodal') .modal('show');
	          });
  }
});
</script>
<body ng-controller="ListController as list">
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
        <jsp:include page="bkheader.jsp"/>
        <table class="ui unstackable celled structured table" style="margin-top: 5px" ng-show="list.userinfolist.length ==0">
		    <tbody>
		      <tr><td>申請待ち状態のユーザがありません。</td></tr>
		    </tbody>
		</table>
		<table class="ui unstackable celled structured table" style="margin-top: 5px" ng-show="list.userinfolist.length >0">
			<tbody>
				<tr bgcolor="#FAFAFA" height="30px">
					<th width="20%" style="text-align: center">ID</th>
					<th width="20%" style="text-align: center">名前</th>
					<th width="20%" style="text-align: center">性别</th>
					<th width="20%" style="text-align: center">生日</th>
					<th width="20%" style="text-align: center"></th>
				</tr>
				<tr ng-repeat="eachitem in list.userinfolist">
					<td>{{eachitem.userid}}</td>
					<td>{{eachitem.username}}</td>
					<td>{{eachitem.sex}}</td>
					<td>{{eachitem.birthday}}</td>
					<td><button class="ui button" ng-click="list.itemsave(eachitem.userid)">許可</button></td>
				</tr>
			</tbody>
		</table>
		<h4 class="ui horizontal divider header">
				<i class="bar chart icon"></i> 許可ユーザ一覧
		</h4>
		<table class="ui unstackable celled structured table" style="margin-top: 5px">
			<tbody>
				<tr bgcolor="#FAFAFA" height="30px">
					<th width="25%" style="text-align: center">ID</th>
					<th width="25%" style="text-align: center">名前</th>
					<th width="25%" style="text-align: center">性别</th>
					<th width="25%" style="text-align: center">生日</th>
				</tr>
				<tr ng-repeat="eachitem in list.normaluserlist">
					<td>{{eachitem.userid}}</td>
					<td>{{eachitem.username}}</td>
					<td>{{eachitem.sex}}</td>
					<td>{{eachitem.birthday}}</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>
