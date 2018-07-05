<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>通院履歴</title>
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
  list.errmessage ="";
  list.id="";
  list.langinx = initdata.langinx;
  list.vdate =new Date("2018-09-12");
  list.detail="";
  list.historyList =  [
      {id:'00001', date:'2018-08-17', text:'肠胃炎'},
      {id:'00002', date:'2018-07-29', text:'拉肚子'},
      {id:'00003', date:'2018-06-03', text:'严重流感'}
      ];
  
  list.lblvisits = ['就医记录', 'Visits', '通院履歴'];
  list.lbldates = ['日期', 'Date', '日付'];
  list.lbldetails = ['详细情况 ', 'Detail', '詳細情報'];
  list.lblexplains = ['感冒发烧，住院2周', '2 week stay in hospital', '風邪で２週間入院した'];
  list.lblheaders = ['履历一览', 'List', '履歴一覧'];
  list.lblsaves = ['保存', 'Save', '保存'];
  
  list.setlabel = function() {
	  var laninx = this.langinx;
	  list.lblvisit =list.lblvisits[laninx];
	  list.lbldate =list.lbldates[laninx];
	  list.lbldetail =list.lbldetails[laninx];
	  list.lblexplain =list.lblexplains[laninx];
	  list.lblheader =list.lblheaders[laninx];
	  list.lblsave =list.lblsaves[laninx];
	}
  
  list.setlabel();
  
  list.onItemClick = function() {
  	$scope.url =  "vistis.do";
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
  
  list.onitemedit = function(id) {
	  for(var i=0; i< list.historyList.length; i++){
		  if(id == list.historyList[i].id){
			  list.id = id;
			  list.vdate = new Date(list.historyList[i].date);
			  list.detail = list.historyList[i].text;
		  }
	  }
  }
  
  list.onitemdelete = function(id) {
	  alert(id);
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
			<div style="margin-top:10px"></div>
			<div class="ui segment">
				<a class="ui large top attached label center aligned">{{list.lblvisit}}</a>
				<div class="ui large form">
				   <input type="text" ng-show=false ng-model="list.id">
					<label style="width: 60px">{{list.lbldate}}</label>
					<input type="date" min="1900-01-01" ng-model="list.vdate">
					<div style="height:10px"></div>
					<label style="width: 60px">{{list.lbldetail}}</label> <textarea type="text"
							placeholder={{list.lblexplain}} ng-model="list.detail"></textarea>
					<div style="height:5px"></div>
					<button class="fluid ui large button" ng-click="list.onItemClick()">{{list.lblsave}}</button>
				</div>

			</div>
			
			<div class="ui segment">
				<a class="ui large top attached label center aligned">{{list.lblheader}}</a>
				<div class="ui large middle aligned divided list">
					<div class="item" ng-repeat="eachitem in list.historyList">
						<div class="right floated content">
							<i class="edit icon" ng-click="list.onitemedit(eachitem.id)"></i>
							<i class="window close outline icon" ng-click="list.onitemdelete(eachitem.id)"></i>
						</div>
						<div class="content">
							<div class="header">{{eachitem.date}}</div>
							<div class="description">{{eachitem.text}}</div>
						</div>
						
					</div>
				</div>

			</div>
		</div>
		<div class="column"></div>
	</div>

</body>