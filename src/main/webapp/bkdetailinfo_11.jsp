<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl11">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">选项</h1>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" rowspan="16">选项</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">标准值/单位</td>
				<td class="cellheader">本次</td>
				<td class="cellheader">上次</td>
				<td class="cellheader">上上次</td>
			</tr>			
			<tr>
				<td rowspan="15"><div class="ui inverted form lblcontent"><textarea  rows="38" style="height: 100%; width:100%; resize: none" ng-model="list.dt_11[0]"></textarea></div></td>
				<td>血沉（60分）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[1]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[2]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[3]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[4]></div></td>
			</tr>
			<tr>
				<td>血沉（120分）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[5]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[6]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[7]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[8]></div></td>
			</tr>
			<tr>
				<td>幽门螺旋杆菌抗体</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[9]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[10]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[11]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[12]></div></td>
			</tr>
			<tr>
				<td>Rh血型</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[13]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[14]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[15]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[16]></div></td>
			</tr>
			<tr>
				<td>ABO血型</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[17]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[18]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[19]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[20]></div></td>
			</tr>
			<tr>
				<td>TSH</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[21]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[22]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[23]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[24]></div></td>
			</tr>
			<tr>
				<td>FT4</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[25]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[26]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[27]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[28]></div></td>
			</tr>
			<tr>
				<td>FT3</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[29]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[30]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[31]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[32]></div></td>

			</tr>
			<tr>
				<td>胃蛋白酶原</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[33]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[34]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[35]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[36]></div></td>
			</tr>
			<tr>
				<td>CK（CPK）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[37]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[38]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[39]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[40]></div></td>
			</tr>
			<tr>
				<td>咳痰细胞诊</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[41]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[42]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[43]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[44]></div></td>
			</tr>
			<tr>
				<td>BNP</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[45]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[46]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[47]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[48]></div></td>
			</tr>
			<tr>
				<td>QFT（判定）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[49]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[50]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[51]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[52]></div></td>

			</tr>
			<tr>				
				<td>QFT（TB抗原）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[53]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[54]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[55]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[56]></div></td>
			</tr>
			<tr>				
				<td>HPV-DNA（HL）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[57]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[58]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[59]></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%"> <input type="text" ng-model=list.dt_11[60]></div></td>
			</tr>
		</tbody>
		
	</table>
</div>