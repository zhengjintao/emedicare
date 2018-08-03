 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl04">
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="6">胸部X线检查</td>
      <td class="cellheader" style="width:100px" >判定</td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td rowspan="5"><div class="ui inverted form lblcontent"><textarea rows="10" cols="1" style="resize: none" ng-model="list.dt_04[0]"></textarea></div></td>
      <td style="height:20p">部位</td>
      <td style="height:20p" colspan="3">所见</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[1]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[2]"></div></td>
    </tr>
    <tr>
      <td colspan="2">上次</td>
      <td colspan="2">上上次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td>所见</td>
      <td>部位</td>
      <td>所见</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[3]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[4]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[5]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[6]"></div></td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="6">脂质</td>
      <td class="cellheader" style="width:100px" >判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="5"><div class="ui inverted form lblcontent"><textarea rows="10" cols="1" style="resize: none" ng-model="list.dt_04[7]"></textarea></div></td>
      <td>总胆固醇</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[8]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[9]"></div></td>
    </tr>
     <tr>
      <td>中性脂肪</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[10]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[11]"></div></td>
    </tr>
     <tr>
      <td>高密度脂蛋白总胆固醇</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[12]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[13]"></div></td>
    </tr>
     <tr>
      <td>低密度脂蛋白总胆固醇</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[14]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[15]"></div></td>
    </tr>
     <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[16]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[17]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[18]"></div></td>
    </tr>
    <tr>
      <td colspan="5">
      <div class="ui inverted form lblcontent"><textarea rows="3" cols="1" style="resize: none" ng-model="list.dt_04[19]"></textarea></div>
      </td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="14">肝功能检查</td>
      <td class="cellheader" style="width:100px" >判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="13">
      <div class="ui inverted form lblcontent"><textarea rows="30" cols="1" style="resize: none" ng-model="list.dt_04[20]"></textarea></div>
      </td>
      <td>总胆红素（T-BIL）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[21]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[22]"></div></td>
    </tr>
     <tr>
      <td>ZTT</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[23]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[24]"></div></td>
    </tr>
     <tr>
      <td>TTT</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[25]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[26]"></div></td>
    </tr>
     <tr>
      <td>AST</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[27]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[28]"></div></td>
    </tr>
     <tr>
      <td>ALT</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[29]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[30]"></div></td>
    </tr>
     <tr>
      <td>γ－GTP</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[31]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[32]"></div></td>
    </tr>
    <tr>
      <td>总蛋白（TP）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[33]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[34]"></div></td>
    </tr>
     <tr>
      <td>白蛋白</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[35]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[36]"></div></td>
    </tr>
    <tr>
      <td>A/G比</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[37]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[38]"></div></td>
    </tr>
    <tr>
      <td>ALP</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[39]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[40]"></div></td>
    </tr>
    <tr>
      <td>LAP</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[41]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[42]"></div></td>
    </tr>
    <tr>
      <td>ChE</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[43]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[44]"></div></td>
    </tr>
    <tr>
      <td>LDH</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[45]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_04[46]"></div></td>
    </tr>
    <tr>
      <td colspan="5">
      <div class="ui inverted form lblcontent"><textarea rows="3" cols="1" style="resize: none" ng-model="list.dt_04[47]"></textarea></div>
      </td>
    </tr>
  </tbody>
</table>
</div>