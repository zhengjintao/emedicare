 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl08">
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" rowspan="13">乳房检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="12">
      <div class="ui inverted form lblcontent"><textarea rows="34" cols="1" style="resize: none" ng-model="list.dt_08[0]"></textarea></div>
      </td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[1]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[2]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[3]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[4]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[5]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[6]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[7]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[8]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[9]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[10]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[11]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[12]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[13]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[14]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[15]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[16]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[17]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[18]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[19]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[20]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[21]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[22]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[23]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[24]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[25]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[26]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[27]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[28]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[29]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[30]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[31]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[32]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[33]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[34]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[35]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[36]"></div></td>
    </tr>
    
    <tr>
      <td colspan="5"></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="13">妇科检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="12">
      <div class="ui inverted form lblcontent"><textarea rows="34" cols="1" style="resize: none" ng-model="list.dt_08[37]"></textarea></div>
      </td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[38]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[39]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[40]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[41]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[42]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[43]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[44]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[45]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[46]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[47]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[48]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[49]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[50]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[51]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[52]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[53]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[54]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[55]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[56]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[57]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[58]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[59]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[60]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[61]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[62]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[63]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[64]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[65]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[66]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[67]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[68]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[69]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[70]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[71]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[72]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_08[73]"></div></td>
    </tr>
  </tbody>
</table>
</div>