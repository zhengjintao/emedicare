<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>個人情報</title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script>
initdata=[];
initdata.userid = '<%=request.getAttribute("userid")%>';
initdata.username = '<%=request.getAttribute("username")%>';
initdata.langinx = <%=request.getAttribute("langinx")%>;
initdata.sex = <%=request.getAttribute("sex")%>;
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
  list.userid="";
  list.username ="本田慶応";
  list.birthday=new Date("1989-09-12");
  list.age="0";
  list.telnum="080-8184-8830";
  list.isman=true;
  list.langinx=0;
  
  list.lbluserinfos = ['个人信息', 'Language', '個人情報'];;
  list.lblnames = ['姓名', 'Language', 'サービス'];
  list.lblsexs = ['性别', 'Language', '診査履歴'];
  list.lblmans = ['男', 'Language', '診査履歴'];
  list.lblwomans = ['女', 'Language', '診査履歴'];
  list.lblbirthdays = ['出生年月', 'Language', '通院履歴'];
  list.lblages = ['年龄', 'Language', '次回検査'];
  list.lbltelnums = ['联系方式', 'Language', 'システム設定'];
  list.lblsaves = ['保存', 'Language', 'システム設定'];
  
  list.setlabel = function() {
	  var laninx = this.langinx;
	  list.lbluserinfo =list.lbluserinfos[laninx];
	  list.lblname =list.lblnames[laninx];
	  list.lblsex =list.lblsexs[laninx];
	  list.lblman =list.lblmans[laninx];
	  list.lblwoman =list.lblwomans[laninx];
	  list.lblbirthday =list.lblbirthdays[laninx];
	  list.lblage =list.lblages[laninx];
	  list.lbltelnum =list.lbltelnums[laninx];
	  list.lblsave =list.lblsaves[laninx];
	}
  
  list.setlabel();
  
  list.countage=function(){
	  var ageDifMs = Date.now() - this.birthday.getTime();
	  var ageDate = new Date(ageDifMs); // miliseconds from epoch
	  list.age= Math.abs(ageDate.getUTCFullYear() - 1970);
  }
  
  list.countage();
  
 list.onItemClick = function() {
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
			<div class="ui segment">
				<a class="ui large top attached label center aligned">{{list.lbluserinfo}}</a>
				<div class="ui form">
					<div class="inline field">
						<label style="width: 60px">{{list.lblname}}</label> <input type="text"
							placeholder="Full Name" ng-model="list.username">
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lblsex}}</label>
						<div class="ui radio checkbox">
							<input type="radio" name="frequency" ng-checked="list.isman"> <label>{{list.lblman}}</label>
						</div>
						<div class="ui radio checkbox" style="margin-left: 10px">
							<input type="radio" name="frequency" ng-checked="list.isman==false"> <label>{{list.lblwoman}}</label>
						</div>
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lblbirthday}}</label> <input type="date" min="1900-01-01" max="2018-06-25"  ng-model="list.birthday" ng-change="list.countage()" >
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lblage}}</label> <input type="text"
							placeholder="Full Name" disabled=""  ng-model="list.age">
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lbltelnum}}</label> <input type="text"
							placeholder="Full Name" ng-model="list.telnum">
					</div>
				</div>

			</div>
			<button class="fluid ui large button" ng-click="list.onItemClick()">{{list.lblsave}}</button>
			
		</div>
	
		<div class="column"></div>
	</div>

</body>