<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl19">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">骨密度测定结果</h1>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">ID</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_19[0]></div></td>
				<td class="cellheader">检查日期</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_19[1]></div></td>
			</tr>
			<tr>
				<td class="cellheader">姓名</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_19[2]></div></td>
				<td class="cellheader">检查部位</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_19[3]></div></td>
			</tr>
			<tr>
				<td class="cellheader">出生日期</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_19[4]></div></td>
				<td class="cellheader">年龄/性别</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_19[5]></div></td>
			</tr>
		</tbody>
	</table>
	<h2 class="ui top header" style="margin-top: 40px;"><b>本次测定结果</b></h2>
	<table class="ui unstackable table">
				<tr>
					<td>测定部位：</td>
				</tr>
	</table>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td rowspan="4">
					<div class="ui input" style="height:30px"> <input type="text" ng-model=list.dt_19[6]></div>
				</td>
			</tr>
		</tbody>
	</table>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">骨密度判定</td>
				<td ><div class="ui input"><input type="text" ng-model=list.dt_19[7]></div></td>
			</tr>
			<tr>
				<td class="cellheader" rowspan="5">解说</td>
				<td rowspan="3">
      				<div class="ui inverted form lblcontent"><textarea rows="10" cols="1" style="resize: none" ng-model=list.dt_19[8]></textarea></div>
      			</td>
      			
      			
			</tr>
		</tbody>
	</table>
</div>
	