 <%@ page import="java.util.List" %> 
<div class="ui bottom attached active tab segment">
	<div id="table12" class="ui attached segment" style="margin-top: auto;">
		<h1 class="ui top header" style="margin-top: 11px; text-align: center">综合判断</h1>
		<table border="1" class="ui unstackable celled table">			
			<tr bgcolor="#00B5AB">
				<td width="12%" style="text-align: center; color: white" >体检项目</td>
				<td width="7%" style="text-align: center; color: white" >本次</td>
				<td width="7%" style="text-align: center; color: white" >上次</td>
				<td width="8%" style="text-align: center; color: white" >上上次</td>
				<td width="12%" style="text-align: center; color: white" >体检项目</td>
				<td width="7%" style="text-align: center; color: white" >本次</td>
				<td width="7%" style="text-align: center; color: white" >上次</td>
				<td width="8%" style="text-align: center; color: white" >上上次</td>	
				<td width="12%" style="text-align: center; color: white" >体检项目</td>
				<td width="7%" style="text-align: center; color: white" >本次</td>
				<td width="7%" style="text-align: center; color: white" >上次</td>
				<td width="8%" style="text-align: center; color: white" >上上次</td>	
			</tr>
			<tr>
				<td >诊察所见</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[0]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[1]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[2]"></div></td>
				<td >血清反应</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[3]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[4]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[5]"></div></td>
				<td >乳房检查</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[6]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[7]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[8]"></div></td>
			</tr>
			<tr>
				<td >身体测量</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[9]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[10]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[11]"></div></td>
				<td >血沉</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[12]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[13]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[14]"></div></td>
				<td >妇科检查</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[15]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[16]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[17]"></div></td>
			</tr>
			<tr>
				<td >血压</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[18]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[19]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[20]"></div></td>
				<td >糖尿病</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[21]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[22]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[23]"></div></td>
				<td >ABI</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[24]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[25]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[26]"></div></td>
			</tr>
			<tr>
				<td >视力</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[27]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[28]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[29]"></div></td>
				<td >炎症反应</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[30]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[31]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[32]"></div></td>
				<td >胸部CT</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[33]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[34]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[35]"></div></td>
			</tr>
			<tr>
				<td >听力</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[36]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[37]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[38]"></div></td>
				<td >肝炎</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[39]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[40]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[41]"></div></td>
				<td >腹部CT</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[42]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[43]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[44]"></div></td>
			</tr>
			<tr>
				<td >尿常规</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[45]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[46]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[47]"></div></td>
				<td >肿瘤标记物</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[48]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[49]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[50]"></div></td>
				<td >尿沉渣</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[51]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[52]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[53]"></div></td>
			</tr>
			<tr>
				<td >肺功能</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[54]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[55]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[56]"></div></td>
				<td >病毒抗体</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[57]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[58]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[59]"></div></td>
				<td >甲状腺超声波</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[60]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[61]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[62]"></div></td>
			</tr>
			<tr>
				<td >便检查</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[63]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[64]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[65]"></div></td>
				<td >胸部</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[66]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[67]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[68]"></div></td>
				<td >甲状腺检查</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[69]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[70]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[71]"></div></td>
			</tr>
			
			<tr>
				<td >肝功能</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[72]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[73]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[74]"></div></td>
				<td >心电图</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[75]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[76]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[77]"></div></td>
			</tr>
			<tr>
				<td >肾功能</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[78]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[79]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[80]"></div></td>
				<td >眼底所见</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[81]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[82]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[83]"></div></td>
			</tr>
			<tr>
				<td >胰功能</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[84]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[85]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[86]"></div></td>
				<td >胃部内视镜</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[87]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[88]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[89]"></div></td>
			</tr>
			<tr>
				<td >脂质</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[90]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[91]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[92]"></div></td>
				<td >上腹部超声波</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[93]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[94]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[95]"></div></td>
			</tr>
			<tr>
				<td >痛风</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[96]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[97]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[98]"></div></td>
				<td >血沉</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[99]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[100]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[101]"></div></td>
			</tr>
			<tr>
				<td >血球</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[102]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[103]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[104]"></div></td>
				<td >骨密度</td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[105]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[106]"></div></td>
				<td style="padding:3px"><div class="ui input" style="width:100px;"> <input type="text" ng-model="list.dt_12[107]"></div></td>
			</tr>
		</table>
		
		<table border="1" class="ui unstackable celled table" style="margin-top: 40px;">
			<tr>
				<td width="20%" style="text-align: center;" rowspan="4" >判定区分</td>
				<td width="80%" style="text-align: center;" colspan="3" ></td>
			</tr>
			<tr>
				<td>A：无异常 </td>
				<td>C1: 3个月后复查</td>
				<td>D2：要详细检查</td>
			</tr>
			<tr>
				<td>B：虽然发现有轻度异常，但是对日常生活无影响</td>
				<td>C2: 6个月后复查</td>
				<td>D1：要医疗</td>
			</tr>
			<tr>
				<td>C：有轻度异常，需要改善生活习惯，或动态观察</td>
				<td>C2: 12个月后复查</td>
				<td>E: 正在治疗中</td>
			</tr>
		</table>
		
		<div class="ui equal width grid" style="margin-top: 40px;">
			<div class="column">
				<div class="ui labeled input">
					<div class="ui label" bgcolor="#00B5AB">代谢综合症判定</div>
					<input type="text" ng-model="list.dt_12[108]">
				</div>
			</div>
			<div class="column">
				<div class="ui labeled input">
					<div class="ui label" bgcolor="#00B5AB">保健指导程度</div>
					<input type="text" ng-model="list.dt_12[109]">
				</div>
			</div>
		</div>
		
		<div class="wide column">
			<h3 class="ui top header" style="margin-top: 40px;">指示事项</h3>
			<div class="ui inverted form lblcontent">
				<div style="height: 4px"></div>
				<textarea style="height: 50px; width: 100%; resize: none" ng-model="list.dt_12[110]"></textarea>
			</div>
		</div>
		
	</div>
</div>