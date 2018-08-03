 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl07">
	 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" rowspan="6">肺功能</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="5"><div class="ui inverted form lblcontent"><textarea rows="11" cols="1" style="resize: none" ng-model="list.dt_07[0]"></textarea></div></td>
      <td>肺活量（实测值</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[1]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[2]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[3]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[4]"></div></td>
    </tr>
    <tr>
      <td>%肺活量</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[5]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[6]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[7]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[8]"></div></td>
    </tr>
    <tr>
      <td>1秒率</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[9]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[10]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[11]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[12]"></div></td>
    </tr>
    <tr>
      <td>%1秒量</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[13]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[14]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[15]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[16]"></div></td>
    </tr>
    <tr>
      <td>V25</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[17]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[18]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[19]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[20]"></div></td>
    </tr>
   
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none" ng-model="list.dt_07[21]"></textarea></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">胰腺</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_07[22]"></textarea></div></td>
      <td>血清淀粉酶</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[23]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[24]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[25]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[26]"></div></td>
    </tr>
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none" ng-model="list.dt_07[27]"></textarea></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="7">炎症反应</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="6"><div class="ui inverted form lblcontent"><textarea rows="16" cols="1" style="resize: none" ng-model="list.dt_07[28]"></textarea></div></td>
       <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[76]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[29]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[30]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[31]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[32]"></div></td>

    </tr>
    <tr>
      <td>ASO</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[33]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[34]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[35]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[36]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[77]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[37]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[38]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[39]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[40]"></div></td>
    </tr>
    <tr>
      <td>类风湿因子定量</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[41]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[42]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[43]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[44]"></div></td>
    </tr>
    <tr>
      <td>CRP定量</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[45]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[46]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[47]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[48]"></div></td>
    </tr>
    <tr>
      <td>CRP判定</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[49]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[50]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[51]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[52]"></div></td>
    </tr>
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none" ng-model="list.dt_07[53]"></textarea></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="4">肝炎</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="3"><div class="ui inverted form lblcontent"><textarea rows="6" cols="1" style="resize: none" ng-model="list.dt_07[54]"></textarea></div></td>
      <td>HBs抗原</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[55]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[56]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[57]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[58]"></div></td>
    </tr>
    <tr>
      <td>HBs抗体</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[59]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[60]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[61]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[62]"></div></td>
    </tr>
    <tr>
      <td>HCV抗体</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[63]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[64]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[65]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[66]"></div></td>
    </tr>
    
    <tr>
      <td colspan="7"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="3">血清反应</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="2"><div class="ui inverted form lblcontent"><textarea rows="4" cols="1" style="resize: none" ng-model="list.dt_07[67]"></textarea></div></td>
      <td>梅毒反应RPR</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[68]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[69]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[70]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[71]"></div></td>
    </tr>
    <tr>
      <td>TPLA</td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[72]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[73]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[74]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:140px;"><input type="text" ng-model="list.dt_07[75]"></div></td>
    </tr>
  </tbody>
</table>
</div>