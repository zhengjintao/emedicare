<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl09">
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="8">肿瘤标志物</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">标准值/单位</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td rowspan="7"><div class="ui inverted form lblcontent"><textarea rows="17" style="height: 100%; width:100%; resize: none" ng-model="list.dt_09[0]"></textarea></div></td>
				<td>AFP</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[1]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[2]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[3]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[4]></div></td>
			</tr>
			<tr>
				<td>PIVKA-II</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[5]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[6]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[7]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[8]></div></td>
			</tr>
			<tr>
				<td>CEA</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[9]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[10]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[11]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[12]></div></td>
			</tr>
			<tr>
				<td>CA19-9</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[13]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[14]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[15]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[16]></div></td>
			</tr>
			<tr>
				<td>CA15-3</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[17]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[18]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[19]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[20]></div></td>
			</tr>
			<tr>
				<td>CA125</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[21]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[22]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[23]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[24]></div></td>
			</tr>
			<tr>
				<td>CYFRA</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[25]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[26]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[27]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[28]></div></td>
			</tr>
		</tbody>
	</table>
	
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="5">ABI/PWV</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">标准值/单位</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td rowspan="4"><div class="ui inverted form lblcontent"><textarea rows="9" style="height: 100%; width:100%; resize: none" ng-model="list.dt_09[29]"></textarea></div></td>
				<td>ABI 右</td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[30]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[31]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[32]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[33]></div></td>

			</tr>
			<tr>
				<td>ABI 左</td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[34]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[35]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[36]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[37]></div></td>

			</tr>
			<tr>
				<td>baPWV 右</td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[38]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[39]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[40]></div></td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[41]></div></td>
			</tr>
			<tr>
				<td>baPWV 左</td>
				<td style='padding:3px'><div class='ui input' style='width:100%'> <input type='text' ng-model=list.dt_09[42]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[43]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[44]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[45]></div></td>
			</tr>
		</tbody>
	</table>
			
	<table class="ui unstackable celled structured table">
		<tbody>   
			<tr>
				<td class="cellheader" rowspan="2">甲状腺超声</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td><div class="ui inverted form lblcontent"><textarea  rows="2" style="height: 100%; width:100%; resize: none" ng-model="list.dt_09[46]"></textarea></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[47]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[48]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[49]></div></td>
			</tr>
		</tbody>
	</table>
				
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="4">骨密度</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>
			<tr>
				<td rowspan="3"><div class="ui inverted form lblcontent"><textarea style="height: 100%; width:100%; resize: none" ng-model="list.dt_09[50]"></textarea></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[51]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[52]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[53]></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[54]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[55]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[56]></div></td>
			</tr>    
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[57]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[58]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_09[59]></div></td>
			</tr>  
		</tbody>
	</table>
</div>