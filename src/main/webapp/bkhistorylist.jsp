<html ng-app="listApp">
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script>
initdata=[];
initdata.userid = '<%=request.getAttribute("userid")%>';
initdata.username = '<%=request.getAttribute("username")%>';
initdata.birthday = '<%=request.getAttribute("birthday")%>';
initdata.sex = '<%=request.getAttribute("sex")%>';
initdata.telnum = '<%=request.getAttribute("telnum")%>';
initdata.address = '<%=request.getAttribute("address")%>';
</script>
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
  list.userid = initdata.userid;
  list.username= initdata.username;
  list.birthday= initdata.birthday;
  list.sex= initdata.sex;
  list.telnum = initdata.telnum;
  list.address= initdata.address;
  list.explist =  [];
  list.visitlist = [];
  (function(){
	  	$scope.url =  "bkhistorylist.do";
	  	var postdata = {'mode':'list', 'userid' : list.userid};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.explist = result.data.explist;
	  			list.visitlist = result.data.visitlist;
	          }).catch(function (result) {
	          	list.message = "SORRY!エラーが発生しました。";
	          	$('#cmodal') .modal('show');
	          });
	      
	  })();
  
});
</script>
<body ng-controller="ListController as list">
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
		<jsp:include page="bkheader.jsp" />
		<div class="ui grid">
			<div class="column">
				<div class="ui breadcrumb">
					<a class="section" href="bkaccountlist.do"><h4>顧客一覧</h4></a> <i
						class="right angle icon divider"></i>
					<div class="active section">
						<h4>{{list.username}}</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="ui section divider" style="margin-top: 5px;margin-bottom:0px"></div>
		<h3 class="ui top attached header" style="margin-top: 10px;">基本情報</h3>
		<div class="ui attached segment" style="margin-top: auto;">
			<div class="ui grid">
				<div class="eight wide column"  style="padding-bottom:0px">
					<div class="ui labeled input">
								<div class="ui label" style="width:80px">名前</div>
								<input type="text" readonly="readonly" ng-model="list.username">
							</div>
				</div>
				<div class="eight wide column" style="padding-bottom:0px">
					<div class="ui labeled input">
								<div class="ui label" style="width:80px">性別</div>
								<input  readonly="readonly" ng-model="list.sex">
							</div>
				</div>
				<div class="eight wide column" style="padding-bottom:0px">
					<div class="ui labeled input">
								<div class="ui label" style="width:80px">生年月日</div>
								<input  readonly="readonly" ng-model="list.birthday">
							</div>
				</div>
				
				<div class="eight wide column" style="padding-bottom:0px">
					<div class="ui labeled input">
								<div class="ui label" style="width:80px">電話番号</div>
								<input  readonly="readonly" ng-model="list.telnum">
							</div>
				</div>
				<div class="eight wide column">
					<div class="ui labeled input">
								<div class="ui label" style="width:80px">アドレス</div>
								<input  style="width:400px" readonly="readonly" ng-model="list.address">
							</div>
				</div>
			</div>
		</div>

		<h3 class="ui top attached header" style="margin-top: 10px;">診査履歴</h3>

		<div class="ui attached segment">
			<table class="ui celled table" style="margin-top: auto">
				<tbody>
				    <tr ng-show="list.explist.length==0">
				     <td>診査履歴なし</a></td>
				    </tr>
				    <tr bgcolor="#FAFAFA" height="30px" ng-show="list.explist.length>0">
				        <th width="60%" style="text-align: center;">履历文件名</th>
				        <th width="40%" style="text-align: center;">诊查时日期</th>
			        </tr>
					<tr ng-repeat="eachitem in list.explist">
						<td><a href="bkdetailinfo.do?mode=init&userid={{list.userid}}&historydate={{eachitem.historydate}}&historyno={{eachitem.historyno}}&historyname={{eachitem.historyname}}">{{eachitem.historyname}}</a></td>
						<td>{{eachitem.historydate}}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3 class="ui top attached header" style="margin-top: 10px;">通院履歴</h3>
		<div class="ui attached segment">
			<table class="ui celled table" style="margin-top: auto">
				<tbody>
				    <tr ng-show="list.visitlist.length==0">
				    <td>通院記録なし</a></td>
				    </tr>
				    <tr bgcolor="#FAFAFA" height="30px" ng-show="list.visitlist.length>0">
				        <th width="60%" style="text-align: center;">通院记录</th>
				        <th width="40%" style="text-align: center;">记录时间</th>
			        </tr>
					<tr ng-repeat="eachitem in list.visitlist">
						<td width="60%"><a href="bkvistisinfo.do?userid={{list.userid}}&id={{eachitem.id}}&username={{list.username}}&name=通院記録{{eachitem.name}}">通院記録{{eachitem.name}}</a></td>
						<td width="40%">{{eachitem.date}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
