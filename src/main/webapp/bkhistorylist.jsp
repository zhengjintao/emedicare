<html ng-app="listApp">
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script>
initdata=[];
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
  list.username="本田慶応";
  list.age="26";
  list.sex="男"
  list.telnum ="18221412663";
  list.explist = [
	  {'id' : '0000001', 'name': '診断結果1', 'date' : '2018-09-01'},
	  {'id' : '0000002', 'name': '診断結果2', 'date' : '2018-08-03'},
	  {'id' : '0000003', 'name': '診断結果3', 'date' : '2017-09-11'}
	  ];
  list.visitlist = [
	  {'id' : '0000001', 'name': '通院記録1', 'date' : '2018-07-21'},
	  {'id' : '0000002', 'name': '通院記録2', 'date' : '2018-06-23'},
	  {'id' : '0000003', 'name': '診断結果3', 'date' : '2017-05-11'}
	  ];
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
				<div class="eight wide column">
					<div class="ui labeled input">
								<div class="ui label">名前</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value="本田慶応">
							</div>
				</div>
				<div class="eight wide column">
					<div class="ui labeled input">
								<div class="ui label">年齢</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value="26">
							</div>
				</div>
				<div class="eight wide column">
					<div class="ui labeled input">
								<div class="ui label">性別</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value="男">
							</div>
				</div>
				<div class="eight wide column">
					<div class="ui labeled input">
								<div class="ui label">電話番号</div>
								<input id="eusername" name="eusername" type="text"
									readonly="readonly"
									value="18221412663">
							</div>
				</div>
			</div>
		</div>

		<h3 class="ui top attached header" style="margin-top: 10px;">診査履歴</h3>

		<div class="ui attached segment">
			<table class="ui celled table" style="margin-top: auto">
				<tbody>

					<tr ng-repeat="eachitem in list.explist">
						<td><a href="bkdetailinfo.do">{{eachitem.name}}</a></td>
						<td>{{eachitem.date}}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<h3 class="ui top attached header" style="margin-top: 10px;">通院履歴</h3>
		<div class="ui attached segment">
			<table class="ui celled table" style="margin-top: auto">
				<tbody>

					<tr ng-repeat="eachitem in list.visitlist">
						<td><a href="bkvistisinfo.do">{{eachitem.name}}</a></td>
						<td>{{eachitem.date}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
