<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl17">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">检查结果查询(ABC検診)</h1>
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">胃癌风险分级检查</td>
    </tr>
    <tr>
      <td>ID</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[0]></div></td>
      <td>检查日期</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[1]></div></td>
    </tr>
    <tr>
      <td>姓名</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[2]></div></td>
      <td>报告日期</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[3]></div></td>
    </tr>
  </tbody>
</table>
 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">判定结果</td>
    </tr>
    <tr>
      <td colspan="4"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[4]></div></td>
    </tr>
  </tbody>
</table>
 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td colspan="2">检查项目</td>
      <td>测定值</td>
      <td>判定</td>
    </tr>
    <tr>
      <td colspan="2">幽门螺旋杆菌抗体( EIA法：E板 )</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[5]></div></td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[6]></div></td>
    </tr>
    <tr>
      <td rowspan="3">胃蛋白酶原</td>
      <td>胃蛋白酶原Ⅰ（PGⅠ）</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[7]></div></td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[8]></div></td>
    </tr>
    <tr>
      <td>胃蛋白酶原Ⅱ（PGⅡ）</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[9]></div></td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[10]></div></td>
    </tr>
    <tr>
      <td>PGⅠ/PGⅡ比</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[11]></div></td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_17[12]></div></td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td colspan="4" style="text-align:center">阳性判定基准</td>
    </tr>
    <tr>
      <td colspan="2">幽门螺旋杆菌抗体( EIA法：E板 )</td>
      <td colspan="2">3.0 U/mL 以上</td>
    </tr>
    <tr>
      <td colspan="2">胃蛋白酶原</td>
      <td colspan="2">胃蛋白酶原70.0ng/mL以下并且PGⅠ/Ⅱ比3.0以下</td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
   <thead>
      <tr>
      <th style="text-align:center;padding:0px">流程图</th>
    </tr>
   </thead>
  <tbody>
    <tr>
      <td colspan="4" style="text-align:center;padding:0px">血液检查（胃癌风险分级检查）</td>
    </tr>
    <tr>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
      <td style="width:25%;text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px;background-color:#96CFEC">A 型</td>
      <td style="text-align:center;padding:0px;background-color:#F9C45B">B 型</td>
      <td style="text-align:center;padding:0px;background-color:#FC2A54">C 型</td>
      <td style="text-align:center;padding:0px;background-color:#FC2A54">D 型</td>
    </tr>
    <tr>
      <td rowspan="3" style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td colspan="3" style="text-align:center;padding:0px">精密检查</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td colspan="4" style="text-align:center;padding:0px">设定查体的间隔时间</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
      <td style="text-align:center;padding:0px">⬇</td>
    </tr>
    <tr>
      <td style="text-align:center;padding:0px;background-color:#96CFEC">5年1次</td>
      <td style="text-align:center;padding:0px;background-color:#F9C45B">2～3年1次</td>
      <td colspan="2" style="text-align:center;padding:0px;background-color:#FC2A54">1年1次</td>
    </tr>
    <tr>
    <td colspan="4">*   幽门螺旋杆菌除菌后的人属于E型 (除菌群) ，不包含在胃癌风险分级检查之中。<br>但是,要定期的做内窥镜检查。</td>
    </tr>
  </tbody>
</table>
</div>