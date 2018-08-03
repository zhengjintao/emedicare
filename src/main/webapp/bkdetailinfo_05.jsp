 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl05">
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" rowspan="5">糖尿病</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="4"><div class="ui inverted form lblcontent"><textarea rows="8" cols="1" style="resize: none" ng-model="list.dt_05[0]"></textarea></div></td>
      <td>任意时间血糖</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[1]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[2]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[3]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[4]"></div></td>
    </tr>
    <tr>
      <td>血糖</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[5]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[6]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[7]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[8]"></div></td>
    </tr>
    <tr>
      <td>HbA1c(NGSP)</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[9]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[10]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[11]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[12]"></div></td>
    </tr>
    <tr>
      <td>HbA2c(JDS)</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[13]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[14]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[15]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[16]"></div></td>
    </tr>
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none" ng-model="list.dt_05[17]"></textarea></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">痛风</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_05[18]"></textarea></div></td>
      <td>尿酸</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[19]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[20]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[21]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[22]"></div></td>
    </tr>
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none" ng-model="list.dt_05[23]"></textarea></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="3">心电图</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[24]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[25]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[26]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[27]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[28]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[29]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[30]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[31]"></div></td>
    </tr>
    <tr>
      <td colspan="7"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="3">便</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="2"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none" ng-model="list.dt_05[32]"></textarea></div></td>
      <td>便潜血第一次</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[33]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[34]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[35]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[36]"></div></td>
    </tr>
    <tr>
      <td>便潜血第二次</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[37]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[38]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[39]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[40]"></div></td>
    </tr>
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none" ng-model="list.dt_05[41]"></textarea></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="9">眼底</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">当次</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="8"><div class="ui inverted form lblcontent"><textarea rows="18" cols="1" style="resize: none" ng-model="list.dt_05[42]"></textarea></div></td>
      <td colspan="3" style="text-align:center">右    左 </td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[43]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[44]"></div></td>
    </tr>
    <tr>
      <td>检查项目</td>
      <td>标准值/单位</td>
      <td>本次</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[45]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[46]"></div></td>
    </tr>
    <tr>
      <td>K-W（右）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[47]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[48]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[49]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[50]"></div></td>
    </tr>
    <tr>
      <td>K-W（左）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[51]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[52]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[53]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[54]"></div></td>
    </tr>
    <tr>
      <td>Scheie　S（右）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[55]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[56]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[57]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[58]"></div></td>
    </tr>
    <tr>
      <td>Scheie　S（左）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[59]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[60]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[61]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[62]"></div></td>
    </tr>
    <tr>
      <td>Scheie　H（右）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[63]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[64]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[65]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[66]"></div></td>
    </tr>
    <tr>
      <td>Scheie　H（左）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[67]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[68]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[69]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[70]"></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="2">眼压</td>
      <td><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_05[71]"></textarea></div></td>
      <td>眼压（右）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[72]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[73]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[74]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[75]"></div></td>
    </tr>
    <tr>
      <td><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none" ng-model="list.dt_05[76]"></textarea></div></td>
      <td>眼压（左）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[77]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[78]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[79]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" style="width:10px" ng-model="list.dt_05[80]"></div></td>
    </tr>
  </tbody>
</table>
</div>