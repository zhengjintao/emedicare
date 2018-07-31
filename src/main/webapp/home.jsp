<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title></title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script src="angularjs/angular.min.js"></script>
<script>
initdata=[];
initdata.userid = '<%=request.getAttribute("userid")%>';
initdata.username = '<%=request.getAttribute("username")%>';
initdata.langinx = <%=request.getAttribute("langinx")%>;
initdata.userimg = '<%=request.getAttribute("userimg")%>';
</script>
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
  list.userid=initdata.userid;
  list.username =initdata.username;
  list.langinx = initdata.langinx;
  list.userimg = initdata.userimg;
  list.lbluserinfos = ['个人信息', 'Info', '個人情報'];;
  list.lblservices = ['服务', 'Services', 'サービス'];
  list.lblhistorys = ['诊查履历', 'Hisotories', '診査履歴'];
  list.lblvisits = ['就医记录', 'Visits', '通院履歴'];
  list.lblappoints = ['预约诊查', 'Appointment', '次回検査'];
  list.lblsettings = ['系统设置', 'Settings', 'システム設定'];
  list.lbllangsettings = ['语言设置', 'Language', '言語設定'];
  list.lblwebsites = ['官网', 'Site', '公式サイト'];
  
  list.setlabel = function() {
	  var laninx = this.langinx;
	  list.lbluserinfo =list.lbluserinfos[laninx];
	  list.lblservice =list.lblservices[laninx];
	  list.lblhistory =list.lblhistorys[laninx];
	  list.lblvisit =list.lblvisits[laninx];
	  list.lblappoint =list.lblappoints[laninx];
	  list.lblsetting =list.lblsettings[laninx];
	  list.lbllangsetting =list.lbllangsettings[laninx];
	  list.lblwebsite =list.lblwebsites[laninx];
	}
  
  list.setlabel();
  
  list.onitemclick = function(id) {
	  var redurl = 'home.do';
	  if(id==0){
		  redurl = 'personalinfo.do';
	  }else if(id==1){
		  redurl = 'exploratory.do';
	  }else if(id==2){
		  redurl = 'visits.do';
	  }else if(id==3){
		  redurl = 'appointments.do';
	  }else if(id==4){
		  redurl = 'langsetting.do';
	  }else if(id==5){
		  redurl = 'http://www.bitkokusai.com/zh/home';
	  }
	  window.location.href = redurl;
  }
});
</script>

</head>
<body ng-controller="ListController as list">
	<div class="ui one column grid container">
		<div class="column">
			<div style="margin-top:10px"></div>
			<div class="ui segment">
				<div class="ui large top attached label center aligned">{{list.lbluserinfo}}</div>
				<div class="ui large middle aligned selection divided list">
					<div class="item" ng-click="list.onitemclick(0)">
					   
						<div class="right floated content" style="margin-top:10px">
							<i class="chevron right icon"></i>
						</div>
						<img class="ui avatar image" src={{list.userimg}}>
						<div class="content">
							<div class="header">{{list.userid}}</div>
							<div class="description">{{list.username}}</div>
						</div>
					</div>
				</div>

			</div>
			<div class="ui segment">
				<div class="ui large top attached label center aligned">{{list.lblservice}}</div>
				<div class="ui large middle aligned selection divided list">
					<div class="item" ng-click="list.onitemclick(1)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="clone outline icon"></i>
						<div class="content">
							<a class="header">{{list.lblhistory}}</a>
						</div>
					</div>
					<div class="item" ng-click="list.onitemclick(2)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="edit outline icon"></i>
						<div class="content">
							<a class="header">{{list.lblvisit}}</a>
						</div>
					</div>
					<div class="item" ng-click="list.onitemclick(3)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="calendar alternate icon"></i>
						<div class="content">
							<a class="header">{{list.lblappoint}}</a>
						</div>
					</div>
				</div>
			</div>
			<div class="ui segment">
				<div class="ui large top attached label center aligned">{{list.lblsetting}}</div>
				<div class="ui large middle aligned selection divided list">
					<div class="item" ng-click="list.onitemclick(4)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="sun outline icon"></i>
						<div class="content">
							<a class="header">{{list.lbllangsetting}}</a>
						</div>
					</div>
					
					<div class="item" ng-click="list.onitemclick(5)">
						<div class="right floated content">
							<i class="chevron right icon"></i>
						</div>
						<i class="home icon"></i>
						<div class="content">
							<a class="header">{{list.lblwebsite}}</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="column"></div>
	</div>

</body>