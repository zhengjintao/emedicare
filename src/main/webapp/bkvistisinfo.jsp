<html ng-app="listApp">
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script>
initdata=[];
initdata.vdate = '<%=request.getAttribute("vdate")%>';
initdata.detail = '<%=request.getAttribute("detail")%>';
initdata.userid = '<%=request.getAttribute("userid")%>';
initdata.username = '<%=request.getAttribute("username")%>';
initdata.name = '<%=request.getAttribute("name")%>';
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
  list.username = initdata.username;
  list.title = initdata.name;
  list.vdate =new Date(initdata.vdate);
  list.detail=initdata.detail;
});
</script>

<body ng-controller="ListController as list">
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
        <jsp:include page="bkheader.jsp"/>
		<div class="ui grid">
			<div class="column">
				<div class="ui breadcrumb">
					<a class="section" href="bkaccountlist.do"><h4>顧客一覧</h4></a> <i
						class="right angle icon divider"></i> 
					<a class="section" href="bkhistorylist.do?userid={{list.userid}}"><h4>{{list.username}}</h4></a>
					<i class="right angle icon divider"></i>
					<div class="active section">
						<h4>{{list.title}}</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="ui section divider" style="margin-top: 5px;margin-bottom:0px"></div>
		<h3 class="ui top attached header" style="margin-top: 10px;">通院情報</h3>
		<div class="ui attached segment" style="margin-top: auto;">
			<div class="ui grid">
				<div class="eight wide column">
				<div class="ui large form">
				  <label style="width: 60px">日付</label>
					<input type="date" min="1900-01-01" readonly=readonly ng-model="list.vdate">
					<div style="height:10px"></div>
					<label style="width: 60px">詳細情報</label> <textarea readonly=readonly ng-model="list.detail"></textarea>
				</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
