﻿<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>診査详细</title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">
<script>
initdata=[];
initdata.expid = '<%=request.getAttribute("expid")%>';
initdata.name = '<%=request.getAttribute("name")%>';
</script>
<script src="assets/js/detailcommon.js"></script>
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
  list.expid = initdata.expid;
  list.name = initdata.name;
  list.sheets = constsheets;
  
  (function(){
  	$scope.url =  "exploratorydetail.do";
  	var postdata = {'mode':'list', 'expid':list.expid};
      $http(
  		{
  			method:"POST",
  			url:$scope.url,
  			data:postdata,
  			transformRequest:transFormFactory.transForm,
  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
  		}).then(function (result) {
  			list.record = result.data.record;
          }).catch(function (result) {
          	list.message = "SORRY!エラーが発生しました。";
          	$('.ui.basic.modal') .modal('show');
          });
      
  })();
  
  list.showsidebar = function(){
	  $('.ui.sidebar').sidebar('toggle');
  }
  
  $('#accordion1') .accordion({exclusive :false});
  $('#accordion2') .accordion({exclusive :false});
  $('#accordion3') .accordion({exclusive :false});
  
  var item = list.sheets[0];
  list.sheetname = item.shortname;
});
</script>

</head>
<body ng-controller="ListController as list">
	<div class="ui top attached  menu">
		<a class="item" ng-click="list.showsidebar()"> <i
			class="sidebar icon"></i> 更多
		</a>
		<div class="item"></div>
		<div class="item">{{list.sheetname}}</div>
		<div class="item"></div>
		<div class="right menu">

			<div class="vertically fitted borderless item">
				<a href="exploratory.do"><button class="mini ui button">
						返回一览</button></a>
			</div>
		</div>
	</div>
	<div class="ui bottom attached segment pushable">

		<div class="ui sidebar  vertical menu">
			<a class="item"><h3>{{list.name}}</h3></a> <a class="item"
				ng-repeat="eachitem in list.sheets" href="{{eachitem.href}}">{{eachitem.name}}</a>
			<div style="height: 100px"></div>
		</div>
		<div class="pusher">
			<div class="ui segment">
				<div id="accordion1" class="ui styled fluid accordion">
					<div class="title">
						<i class="dropdown icon"></i> 现在的生活习惯
					</div>
					<div class="content">
						<table class="ui unstackable celled structured table">
							<tbody>
								<tr>
									<td rowspan="4">饮食</td>
									<td>饮食速度</td>
									<td class="right aligned">{{list.record.eatspeed}}</td>
								</tr>
								<tr>
									<td>不吃早饭（3次以上）</td>
									<td class="right aligned">{{list.record.uneat}}</td>
								</tr>
								<tr>
									<td>晚餐就餐晚</td>
									<td class="right aligned">{{list.record.dinnerstatus}}</td>
								</tr>
								<tr>
									<td>吃夜宵</td>
									<td class="right aligned">{{list.record.nighteat}}</td>
								</tr>

								<tr>
									<td rowspan="3">运动</td>
									<td>经常运动</td>
									<td class="right aligned">{{list.record.always}}</td>
								</tr>
								<tr>
									<td>在实行身体活动计划</td>
									<td class="right aligned">{{list.record.plan}}</td>
								</tr>
								<tr>
									<td>步行速度快</td>
									<td class="right aligned">{{list.record.walkspeed}}</td>
								</tr>

								<tr>
									<td rowspan="2">饮酒</td>
									<td>频度</td>
									<td class="right aligned">{{list.record.drinktimes}}</td>
								</tr>
								<tr>
									<td>饮酒量</td>
									<td class="right aligned">{{list.record.drinkamount}}</td>
								</tr>

								<tr>
									<td>吸烟</td>
									<td>烟龄</td>
									<td class="right aligned">{{list.record.smokeage}}</td>
								</tr>

								<tr>
									<td>睡眠</td>
									<td>睡眠是否充足</td>
									<td class="right aligned">{{list.record.sleepstatus}}</td>
								</tr>

								<tr>
									<td>精神压力<br>焦虑感
									</td>
									<td>常有压力感</td>
									<td class="right aligned">{{list.record.presure}}</td>
								</tr>
							</tbody>
						</table>

					</div>
					<div class="title">
						<i class="dropdown icon"></i> 对于改善生活习惯的建议
					</div>
					<div class="content">
						<p>{{list.record.suguest}}</p>
						<br/>
					</div>

				</div>

			</div>

			<div class="ui segment">
				<div id="accordion2" class="ui styled fluid accordion">
					<div class="title">
						<i class="dropdown icon"></i> 自觉症状
					</div>
					<div class="content">
						<p class="transition visible" style="display: block !important;">{{list.record.selfstatus}}</p>
					</div>
					<div class="title">
						<i class="dropdown icon"></i> 既往史•现病史
					</div>
					<div class="content">
						<p>{{list.record.illhistory}}</p>
					</div>
					<div class="title">
						<i class="dropdown icon"></i> 检查状态
					</div>
					<div class="content">
						<p>{{list.record.checkstatus}}</p>
					</div>
				</div>
			</div>


			<div class="ui segment">
				<div id="accordion3" class="ui styled fluid accordion">
					<div class="title">
						<i class="dropdown icon"></i> 服用高血压药历
					</div>
					<div class="content">
						<p class="transition visible" style="display: block !important;">{{list.record.drugstatus}}</p>
					</div>
					<div class="title">
						<i class="dropdown icon"></i> 服用脂质代谢异常症药历
					</div>
					<div class="content">
						<p>{{list.record.uneat}}</p>
					</div>
					<div class="title">
						<i class="dropdown icon"></i> 服用糖尿病药历
					</div>
					<div class="content">
						<p>{{list.record.diabetes}}</p>
					</div>
					<div class="title">
						<i class="dropdown icon"></i> 吸烟经历
					</div>
					<div class="content">
						<p>{{list.record.smokeundergo}}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>