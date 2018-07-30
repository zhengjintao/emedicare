<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl15">	
<h1 class="ui top header" style="margin-top: 11px; text-align: center">甲状腺功能检查报告书</h1>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">ID</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[0]></div></td>
				<td class="cellheader">检查日期</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[1]></div></td>
			</tr>
			<tr>
				<td class="cellheader">姓名</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[2]></div></td>
				<td class="cellheader">报告日期</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[3]></div></td>
			</tr>
			<tr>
				<td class="cellheader">担任医生</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[4]></div></td>
				<td class="cellheader">年龄/性别</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[5]></div></td>
			</tr>
		</tbody>
	</table>
	
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">项目名</td>
				<td class="cellheader">结果</td>
				<td class="cellheader">标准值</td>
				<td class="cellheader">单位</td>
			</tr>
			<tr>
				<td>TSH</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[6]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[7]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[8]></div></td>				
			</tr>
			<tr>
				<td>FT4</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[9]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[10]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[11]></div></td>
			</tr>
			<tr>
				<td>FT3</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[12]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[13]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[14]></div></td>
			</tr>
			<tr>
				<td>抗甲状腺球蛋白抗体 （Tg-Ab）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[15]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[16]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[17]></div></td>
			</tr>
			<tr>
				<td>抗甲状腺过氧化物酶抗体 （TPO-Ab）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[18]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[19]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_15[20]></div></td>
			</tr>
		</tbody>
	</table>
</div>