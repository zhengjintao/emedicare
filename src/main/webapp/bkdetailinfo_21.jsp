<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl21">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">检查报告(脳ドック)</h1>
	<table class="ui unstackable celled structured table">
		<tbody>
				<tr>
					<td class="cellheader">ID</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[0]></div></td>
					<td class="cellheader">检查日期</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[1]></div></td>
				</tr>
				<tr>
					<td class="cellheader">姓名</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[2]></div></td>
					<td class="cellheader">年龄/性别</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[3]></div></td>
				</tr>
				<tr>
					<td class="cellheader">第一次担任医生</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[4]></div></td>
					<td class="cellheader">第一次诊断时间</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[5]></div></td>
				</tr>
				<tr>
					<td class="cellheader">第二次担任医生</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[6]></div></td>
					<td class="cellheader">第二次诊断时间</td>
					<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_21[7]></div></td>
				</tr>
		</tbody>
	</table>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" colspan="4">检查名称</td>
			</tr>
			<tr>
				<td colspan="4"><div class="ui input" style="30px;width:100px;"> <input type="text" ng-model=list.dt_21[8]></div></td>
			</tr>
			<tr>
				<td class="cellheader" colspan="4">所见</td>
			</tr>
			<tr>
				<td colspan="4"><div class="ui input" style="30px;width:100px;"> <input type="text" ng-model=list.dt_21[9]></div></td>
			</tr>
			<tr>
     			<td class="cellheader" colspan="4">诊断</td>
    		</tr>
    		<tr>
				<td colspan="4"><div class="ui input" style="30px;width:100px;"> <input type="text" ng-model=list.dt_21[10]></div></td>
			</tr>
		</tbody>
	</table>
</div>