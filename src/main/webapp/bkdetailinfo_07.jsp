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
      <td rowspan="5"><div class="ui inverted form lblcontent"><textarea rows="12" cols="1" style="resize: none"></textarea></div></td>
      <td>肺活量（实测值</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>%肺活量</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>1秒率</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>%1秒量</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>V25</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
   
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none"></textarea></div></td>
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
      <td><div class="ui inverted form lblcontent"><textarea rows="1" cols="1" style="resize: none"></textarea></div></td>
      <td>血清淀粉酶</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none"></textarea></div></td>
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
      <td rowspan="6"><div class="ui inverted form lblcontent"><textarea rows="16" cols="1" style="resize: none"></textarea></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>ASO</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>类风湿因子定量</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>CRP定量</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>CRP判定</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td colspan="7"><div class="ui inverted form lblcontent"><textarea rows="2" cols="1" style="resize: none"></textarea></div></td>
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
      <td rowspan="3"><div class="ui inverted form lblcontent"><textarea rows="8" cols="1" style="resize: none"></textarea></div></td>
      <td>HBs抗原</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>HBs抗体</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>HCV抗体</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
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
      <td rowspan="2"><div class="ui inverted form lblcontent"><textarea rows="6" cols="1" style="resize: none"></textarea></div></td>
      <td>梅毒反应RPR</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
    <tr>
      <td>TPLA</td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
      <td style="padding:3px"><div class="ui input" style="width:100%;"><input type="text" ng-model="list.dt_07[]"></div></td>
    </tr>
  </tbody>
</table>
</div>