<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl13">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">检查结果查询</h1>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr>
				<td class="cellheader">检查名称</td>
				<td class="cellheader">结果</td>
				<td class="cellheader">单位</td>
				<td class="cellheader">基准值</td>
				<td class="cellheader">检查名称</td>
				<td class="cellheader">结果</td>
				<td class="cellheader">单位</td>
				<td class="cellheader">基准值</td>
			</tr>
			<tr>
				<td>B脂蛋白</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[0]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[1]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[2]></div></td>
				<td>FT4</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[3]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[4]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[5]></div></td>
			</tr>
			<tr>
				<td>CA19-9</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[6]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[7]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[8]></div></td>
				<td>FT3</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[9]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[10]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[11]></div></td>
			</tr>
			<tr>
				<td>便-血红蛋白（1）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[12]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[13]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[14]></div></td>
				<td>甲状腺球蛋白AB</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[15]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[16]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[17]></div></td>
			</tr>
			<tr>
				<td>便-血红蛋白（2）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[18]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[19]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[20]></div></td>
				<td>TPO抗体</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[21]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[22]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[23]></div></td>
			</tr>
			<tr>
				<td>胃蛋白酶原</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[24]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[25]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[26]></div></td>
				<td>CEA</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[27]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[28]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[29]></div></td>
			</tr>
			<tr>
				<td>PG1浓度</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[30]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[31]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[32]></div></td>
				<td>AFP</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[33]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[34]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[35]></div></td>
			</tr>
			<tr>
				<td>PG2浓度</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[36]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[37]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[38]></div></td>
				<td>PIVKA-2</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[39]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[40]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[41]></div></td>
			</tr>
			<tr>
				<td>PG1/PG2 比</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[42]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[43]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[44]></div></td>
				<td>CA15-3</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[45]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[46]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[47]></div></td>
			</tr>
			<tr>
				<td>判定</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[48]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[49]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[50]></div></td>
				<td>CA125</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[51]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[52]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[53]></div></td>
			</tr>
			<tr>
				<td>胃癌风险</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[54]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[55]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[56]></div></td>
				<td>CYFRA</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[57]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[58]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[59]></div></td>
			</tr>
			<tr>
				<td>幽门螺旋杆菌</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[60]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[61]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[62]></div></td>
				<td>CRP定量</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[63]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[64]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[65]></div></td>
			</tr>
			<tr>
				<td>判定</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[66]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[67]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[68]></div></td>
				<td>CRP测定值</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[69]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[70]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[71]></div></td>
			</tr>
			<tr>
				<td>结果</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[72]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[73]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[74]></div></td>
				<td>CRP判定</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[75]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[76]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[77]></div></td>
			</tr>
			<tr>
				<td>HPV-DNA-H</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[78]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[79]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[80]></div></td>
				<td>类风湿因子定量</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[81]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[82]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[83]></div></td>
			</tr>
			<tr>
				<td>血沉</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[84]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[85]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[86]></div></td>
				<td>TPLA定性</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[87]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[88]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[89]></div></td>
			</tr>
			<tr>
				<td>TP(总蛋白)</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[90]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[91]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[92]></div></td>
				<td>RPR定性</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[93]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[94]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[95]></div></td>
			</tr>
			<tr>
				<td>白蛋白</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[96]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[97]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[98]></div></td>
				<td>HBS抗原(精密)</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[99]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[100]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[101]></div></td>
			</tr>
			<tr>
				<td>A/G</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[102]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[103]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[104]></div></td>
				<td>判定</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[105]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[106]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[107]></div></td>
			</tr>
			<tr>
				<td>T-bil</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[108]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[109]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[110]></div></td>
				<td>浓度</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[111]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[112]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[113]></div></td>
			</tr>
			<tr>
				<td>TTT</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[114]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[115]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[116]></div></td>
				<td>HBS抗体(精密)</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[117]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[118]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[119]></div></td>
			</tr>
			<tr>
				<td>ZTT</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[120]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[121]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[122]></div></td>
				<td>判定</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[123]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[124]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[125]></div></td>
			</tr>
			<tr>
				<td>AST（GOT）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[126]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[127]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[128]></div></td>
				<td>浓度</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[129]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[130]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[131]></div></td>
			</tr>
			<tr>
				<td>ALT（GPT）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[132]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[133]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[134]></div></td>
				<td>HCV抗体</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[135]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[136]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[137]></div></td>
			</tr>
			<tr>
				<td>LDH</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[138]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[139]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[140]></div></td>
				<td>判定</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[141]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[142]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[143]></div></td>
			</tr>
			<tr>
				<td>ALP</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[144]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[145]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[146]></div></td>
				<td>C-IDX</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[147]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[148]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[149]></div></td>
			</tr>
			<tr>
				<td>GGTP</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[150]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[151]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[152]></div></td>
				<td>HIV-AG.AB</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[153]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[154]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[155]></div></td>
			</tr>
			<tr>
				<td>LAP</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[156]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[157]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[158]></div></td>
				<td>血型（ABO）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[159]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[160]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[161]></div></td>
			</tr>
			<tr>
				<td>ChE</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[162]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[163]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[164]></div></td>
				<td>血型（Rh）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[165]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[166]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[167]></div></td>
			</tr>
			<tr>
				<td>CK（CPK）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[168]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[169]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[170]></div></td>
				<td>WBC</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[171]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[172]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[173]></div></td>
			</tr>
			<tr>
				<td>BNP</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[174]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[175]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[176]></div></td>
				<td>RBC</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[177]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[178]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[179]></div></td>
			</tr>
			<tr>
				<td>淀粉酶（血清）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[180]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[181]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[182]></div></td>
				<td>血红蛋白</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[183]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[184]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[185]></div></td>
			</tr>
			<tr>
				<td>BUN</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[186]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[187]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[188]></div></td>
				<td>红细胞压积</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[189]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[190]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[191]></div></td>
			</tr>
			<tr>
				<td>肌酐</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[192]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[193]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[194]></div></td>
				<td>MCV</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[195]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[196]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[197]></div></td>
			</tr>
			<tr>
				<td>推算GFR</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[198]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[199]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[200]></div></td>
				<td>MCH</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[201]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[202]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[203]></div></td>
			</tr>
			<tr>
				<td>UA（尿酸）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[204]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[205]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[206]></div></td>
				<td>MCHC</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[207]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[208]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[209]></div></td>
			</tr>
			<tr>
				<td>Na</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[210]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[211]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[212]></div></td>
				<td>血小板</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[213]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[214]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[215]></div></td>
			</tr>
			<tr>
				<td>K</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[216]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[217]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[218]></div></td>
				<td>血沉30分</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[219]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[220]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[221]></div></td>
			</tr>
			<tr>
				<td>Cl</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[222]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[223]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[224]></div></td>
				<td>血沉60分</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[225]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[226]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[227]></div></td>
			</tr>
			<tr>
				<td>Ca</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[228]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[229]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[230]></div></td>
				<td>血沉120分</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[231]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[232]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[233]></div></td>
			</tr>
			<tr>
				<td>MGS（镁）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[234]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[235]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[236]></div></td>
				<td>尿蛋白（定性）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[237]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[238]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[239]></div></td>
			</tr>
			<tr>
				<td>T-胆固醇</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[240]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[241]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[242]></div></td>
				<td>尿糖（定性）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[243]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[244]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[245]></div></td>
			</tr>
			<tr>
				<td>TG</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[246]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[247]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[248]></div></td>
				<td>尿胆原</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[249]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[250]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[251]></div></td>
			</tr>
			<tr>
				<td>HDL胆固醇</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[252]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[253]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[254]></div></td>
				<td>尿PH</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[255]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[256]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[257]></div></td>
			</tr>
			<tr>
				<td>LDL胆固醇</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[258]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[259]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[260]></div></td>
				<td>尿潜血</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[261]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[262]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[263]></div></td>
			</tr>
			<tr>
				<td>HBA1C（NGSP）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[264]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[265]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[266]></div></td>
				<td>尿比重</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[267]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[268]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[269]></div></td>
			</tr>
			<tr>
				<td>血糖（BS）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[270]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[271]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[272]></div></td>
				<td>尿沉渣</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[273]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[274]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[275]></div></td>
			</tr>
			<tr>
				<td>胰岛素（IRI）</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[276]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[277]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[278]></div></td>
				<td>RBC</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[279]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[280]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[281]></div></td>
			</tr>
			<tr>
				<td>TSH</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[282]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[283]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[284]></div></td>
				<td>WBC</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[285]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[286]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[287]></div></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>鳞状上皮</td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[288]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[289]></div></td>
				<td style="padding:3px"><div class="ui input" style="height:100%; width:150px"> <input type="text" ng-model=list.dt_13[290]></div></td>
			</tr>
		</tbody>
	</table>
</div>