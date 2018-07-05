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
initdata.sex = '<%=request.getAttribute("sex")%>';
initdata.telnum = '<%=request.getAttribute("telnum")%>';
initdata.address = '<%=request.getAttribute("address")%>';
initdata.birthday = '<%=request.getAttribute("birthday")%>';
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
  list.userid=initdata.userid;
  list.username =initdata.username;
  list.birthday=new Date(initdata.birthday);
  list.age="0";
  list.telnum=initdata.telnum;
  list.sex=initdata.sex;
  list.langinx=initdata.langinx;
  list.address=initdata.address;
  
  list.lbluserinfos = ['个人信息', 'Personal Info', '個人情報'];
  list.lblnames = ['姓名', 'Name', '名前'];
  list.lblsexs = ['性别', 'Sex', '性別'];
  list.lblmans = ['男', 'Male', '男'];
  list.lblwomans = ['女', 'Female', '女'];
  list.lblbirthdays = ['出生年月', 'Birthday', '生年月日'];
  list.lblages = ['年龄', 'Age', '年齢'];
  list.lbltelnums = ['联系方式', 'Telephone', '連絡先'];
  list.lbladdresss = ['联系地址', 'Address', 'アドレス'];
  list.lblsaves = ['保存', 'Save', '保存'];
  
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
	  list.lbladdress =list.lbladdresss[laninx];
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
	 var birthday=list.getformatbirthday();
	  window.location.href = 'personalinfo.do?mode=submit&username='+ list.username+'&langinx='+list.langinx 
			  +'&sex='+ list.sex+'&telnum='+list.telnum +'&address='+ list.address+'&birthday='+ birthday;
  }
 
 list.getformatbirthday = function(){
	  var dt = list.birthday;
	  var y = dt.getFullYear();
	  var m = ("00" + (dt.getMonth()+1)).slice(-2);
	  var d = ("00" + dt.getDate()).slice(-2);
	  var result = y + "-" + m + "-" + d;
	  return result;
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
							placeholder={{list.lblname}} ng-model="list.username">
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lblsex}}</label>
						<div class="ui radio checkbox">
							<input type="radio" name="frequency" value="M" ng-model="list.sex"> <label>{{list.lblman}}</label>
						</div>
						<div class="ui radio checkbox" style="margin-left: 10px">
							<input type="radio" name="frequency" value="F" ng-model="list.sex"> <label>{{list.lblwoman}}</label>
						</div>
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lblbirthday}}</label> 
						<input type="date" min="1900-01-01" max="2018-06-25"  ng-model="list.birthday" ng-change="list.countage()" >
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lblage}}</label> <input type="text"
							placeholder={{list.lblage}} disabled=""  ng-model="list.age" style="width:50px">
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lbltelnum}}</label> <input type="text"
							placeholder={{list.lbltelnum}} ng-model="list.telnum">
					</div>
					<div class="inline field">
						<label style="width: 60px">{{list.lbladdress}}</label> <input type="text"
							placeholder={{list.lbladdress}} ng-model="list.address" style="width:220px">
					</div>
				</div>

			</div>
			<button class="fluid ui large button" ng-click="list.onItemClick()">{{list.lblsave}}</button>
			
		</div>
	
		<div class="column"></div>
	</div>

</body>