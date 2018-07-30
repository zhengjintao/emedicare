<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl14">	
<h1 class="ui top header" style="margin-top: 11px; text-align: center">Spo２检测结果通知</h1>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">ID</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_14[0]></div></td>
				<td class="cellheader">检查日期</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_14[1]></div></td>
			</tr>
			<tr>
				<td class="cellheader">姓名</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_14[2]></div></td>
				<td class="cellheader">年龄/性别</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_14[3]></div></td>
			</tr>
		</tbody>
	</table>
	
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">检查的结果</td>
				<td class="cellheader">判定</td>
			</tr>
			<tr>
				<td>血氧饱和度</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_14[4]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_14[5]></div></td>				
			</tr>
		</tbody>
	</table>
	
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td style="width:40%" class="cellheader">判定区分</td>
				<td style="width:60%" class="cellheader">说明事项</td>
			</tr>
			<tr>
			    <td><div class="ui inverted form lblcontent"><textarea style="resize: none" ng-model="list.dt_14[6]"></textarea></div></td>
			    <td><div class="ui inverted form lblcontent"><textarea style="resize: none" ng-model="list.dt_14[7]"></textarea></div></td>
			</tr>
			<tr>
			    <td colspan="2"><div class="ui inverted form lblcontent"><textarea style="resize: none" ng-model="list.dt_14[8]"></textarea></div></td>
			</tr>
		</tbody>
	</table>
</div>