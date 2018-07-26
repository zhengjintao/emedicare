<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
	</style>
<div class="ui bottom attached tab segment" data-tab="dtl10">
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="5">胸部CT</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td rowspan="4"><div class="ui inverted form lblcontent"><textarea style="height: 100%; width:100%; resize: none" ng-model="list.dt_10[0]"></textarea></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[1]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[2]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[3]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[4]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[5]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[6]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[7]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[8]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[9]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[10]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[11]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[12]></div></td>
			</tr>
		</tbody>
	</table>
	
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="5">腹部CT</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td rowspan="4"><div class="ui inverted form lblcontent"><textarea style="height: 100%; width:100%; resize: none" ng-model="list.dt_10[13]"></textarea></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[14]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[15]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[16]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[17]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[18]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[19]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[20]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[21]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[22]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[23]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[24]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[25]></div></td>
			</tr>
		</tbody>
	</table>
	
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="5">MRI/MRA</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td rowspan="4"><div class="ui inverted form lblcontent"><textarea style="height: 100%; width:100%; resize: none" ng-model="list.dt_10[26]"></textarea></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[27]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[28]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[29]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[30]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[31]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[32]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[33]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[34]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[35]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[36]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[37]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[38]></div></td>
			</tr>
		</tbody>
	</table>
	
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="5">颈部超声</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td rowspan="4"><div class="ui inverted form lblcontent"><textarea style="height: 100%; width:100%; resize: none" ng-model="list.dt_10[39]"></textarea></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[40]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[41]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[42]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[43]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[44]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[45]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[46]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[47]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[48]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[49]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[50]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_10[51]></div></td>
			</tr>
		</tbody>
	</table>
</div>