 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl02">
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" style="width: 100px" rowspan="3">诊察所见</td>
				<td class="cellheader" style="text-align: center;">判定</td>
				<td class="cellheader" style="text-align: center;">本次</td>
				<td class="cellheader" style="text-align: center;">上次</td>
				<td class="cellheader" style="text-align: center;">上上次</td>
			</tr>
			<tr>
				<td rowspan="2">
				    <div class="ui inverted form lblcontent"><textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_02[0]"></textarea></div>
				</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[1]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[2]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[3]"></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[4]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[5]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[6]"></div></td>
			</tr>
		</tbody>
	</table>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" style="width: 80px" rowspan="8">身体测量</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">标准值/单位</td>
				<td class="cellheader">本次</td>
			</tr>
			<tr>
				<td rowspan="7">
				    <div class="ui inverted form lblcontent"><textarea style="height: 100%; width: 100%;resize: none" ng-model="list.dt_02[7]"></textarea></div>
				</td>
				<td>身高</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[8]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[9]"></div></td>
			</tr>
			<tr>
				<td>体重</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[10]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[11]"></div></td>
			</tr>
			<tr>
				<td>标准体重</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[12]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[13]"></div></td>
			</tr>
			<tr>
				<td>肥胖度</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[14]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[15]"></div></td>
			</tr>
			<tr>
				<td>BMI指数</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[16]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[17]"></div></td>
			</tr>
			<tr>
				<td>腹围(cm)</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[18]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[19]"></div></td>
			</tr>
			<tr>
				<td>体脂肪率</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[20]"></div></td>
                <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[21]"></div></td>
			</tr>
			<tr>
			<td  colspan="5"><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_02[25]"></textarea></div></td>
			</tr>
		</tbody>
	</table>

	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" style="width: 100px" rowspan="4">血压</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">标准值/单位</td>
				<td class="cellheader">本次</td>
			</tr>
			<tr>
				<td rowspan="3">
				    <div class="ui inverted form lblcontent"><textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_02[26]"></textarea></div>
				</td>
				<td>高压</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[27]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[28]"></div></td>
			</tr>
			<tr>
				<td>低压</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[29]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[30]"></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[31]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[32]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[33]"></div></td>
			</tr>
			<tr>
			<td  colspan="5"><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_02[34]"></textarea></div></td>
			</tr>
		</tbody>
	</table>

	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" style="width: 100px" rowspan="4">视力</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">标准值/单位</td>
				<td class="cellheader">本次</td>
			</tr>
			<tr>
				<td rowspan="3">
				    <div class="ui inverted form lblcontent"><textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_02[35]"></textarea></div>
				</td>
				<td>矫正视力（右）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[36]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[37]"></div></td>
			</tr>
			<tr>
				<td>矫正视力（左）</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[38]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[39]"></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[40]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[41]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[42]"></div></td>
			</tr>
			<tr>
			<td  colspan="5"><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_02[43]"></textarea></div></td>
			</tr>
		</tbody>
	</table>

	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader" style="width: 100px" rowspan="6">听力</td>
				<td class="cellheader">判定</td>
				<td class="cellheader">检查项目</td>
				<td class="cellheader">标准值/单位</td>
				<td class="cellheader">本次</td>
			</tr>
			<tr>
				<td rowspan="5">
				    <div class="ui inverted form lblcontent"><textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_02[44]"></textarea></div>
				</td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[45]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[46]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[47]"></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[48]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[49]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[50]"></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[51]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[52]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[53]"></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[54]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[55]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[56]"></div></td>
			</tr>
			<tr>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[57]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[58]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_02[59]"></div></td>
			</tr>
			<tr>
			<td  colspan="5"><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_02[60]"></textarea></div></td>
			</tr>
		</tbody>
	</table>
</div>