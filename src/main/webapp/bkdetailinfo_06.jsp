 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl06">
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="9">上部消化管内视镜</td>
      <td class="cellheader">判定</td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td rowspan="8"><div class="ui inverted form lblcontent"><textarea rows="20" cols="1" style="resize: none" ng-model="list.dt_06[0]"></textarea></div></td>
      <td>部位</td>
      <td colspan="3">所见</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[1]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[2]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[3]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[4]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[5]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[6]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[7]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[8]"></div></td>
    </tr>
    <tr>
      <td class="cellheader" colspan="2">上次</td>
      <td class="cellheader" colspan="2">上上次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td>所见</td>
      <td>部位</td>
      <td>所见</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[9]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[10]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[11]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[12]"></div></td>
    </tr>
     <tr>
      <td class="cellheader" style="width:100px" rowspan="3">胃活检</td>
      <td rowspan="3"><div class="ui inverted form lblcontent"><textarea rows="6" cols="1" style="resize: none" ng-model="list.dt_06[13]"></textarea></div></td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td colspan="3">所见</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[14]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[15]"></div></td>
    </tr>
  </tbody>
</table>
 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="8">上腹部超声波</td>
      <td class="cellheader">判定</td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td rowspan="8"><div class="ui inverted form lblcontent"><textarea rows="10" cols="1" style="resize: none" ng-model="list.dt_06[16]"></textarea></div></td>
      <td>部位</td>
      <td colspan="3">所见</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[17]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[18]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[19]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[20]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[21]"></div></td>
      <td colspan="3" style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[22]"></div></td>
    </tr>
    <tr>
      <td class="cellheader" colspan="2">上次</td>
      <td class="cellheader" colspan="2">上上次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td>所见</td>
      <td>部位</td>
      <td>所见</td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[23]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[24]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[25]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[26]"></div></td>
    </tr>
    
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="4">血沉</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="3"><div class="ui inverted form lblcontent"><textarea rows="6" cols="1" style="resize: none" ng-model="list.dt_06[27]"></textarea></div></td>
      <td>血沉（60分）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[28]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[29]"></div></td>
    </tr>
     <tr>
      <td>血沉（120分）</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[30]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[31]"></div></td>
    </tr>
     <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[32]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[33]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_06[34]"></div></td>
    </tr>
  </tbody>
</table>
</div>