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
  
  (function(){
	  	$scope.url =  "bkaccountlist.do";
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
	          }).catch(function (result) {
	          	list.errmessage = "SORRY!エラーが発生しました。";
	          	$('#cmodal') .modal('show');
	          });
	      
	  })();
});
</script>
<body ng-controller="ListController as list">
   <div id="cmodal" class="ui small test modal transition hidden">
		<i class="close icon"></i>
		<div class="content">
			<p id="errmsg">{{list.errmessage}}</p>
		</div>
	</div>
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
        <jsp:include page="bkheader.jsp"/>
		<table class="ui unstackable celled structured table" style="margin-top: 5px">
			<tbody>
				<tr bgcolor="#FAFAFA" height="30px">
				    <th width="25%" style="text-align: center">ID</th>
					<th width="25%" style="text-align: center">名前</th>
					<th width="25%" style="text-align: center">診査履歴数</th>
					<th width="25%" style="text-align: center">通院記録数</th>
				</tr>
				<tr ng-repeat="eachitem in list.userinfolist">
				    <td><a href=bkhistorylist.do?userid={{eachitem.userid}}>{{eachitem.userid}}</a></td>
					<td><a href=bkhistorylist.do?userid={{eachitem.userid}}>{{eachitem.username}}</a></td>
					<td><a href=bkhistorylist.do?userid={{eachitem.userid}}>{{eachitem.expcount}}</a></td>
					<td><a href=bkhistorylist.do?userid={{eachitem.userid}}>{{eachitem.visitcount}}</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
