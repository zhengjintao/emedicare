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
      <td class="cellheader" colspan="4">胃癌风险分级检查</td>
    </tr>
    <tr>
      <td>ID</td>
      <td>{{list.dt_17[0]}}</td>
      <td>检查日期</td>
      <td>{{list.dt_17[0]}}</td>
    </tr>
    <tr>
      <td>姓名</td>
      <td>{{list.dt_17[0]}}</td>
      <td>报告日期</td>
      <td>{{list.dt_17[0]}}</td>
    </tr>
  </tbody>
</table>
 <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">判定结果</td>
    </tr>
    <tr>
      <td colspan="4">{{list.dt_17[0]}}</td>
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
      <td>{{list.dt_17[0]}}</td>
      <td>{{list.dt_17[0]}}</td>
    </tr>
    <tr>
      <td rowspan="3">胃蛋白酶原</td>
      <td>胃蛋白酶原Ⅰ（PGⅠ）</td>
      <td>{{list.dt_17[0]}}</td>
      <td>{{list.dt_17[0]}}</td>
    </tr>
    <tr>
      <td>胃蛋白酶原Ⅱ（PGⅡ）</td>
      <td>{{list.dt_17[0]}}</td>
      <td>{{list.dt_17[0]}}</td>
    </tr>
    <tr>
      <td>PGⅠ/PGⅡ比</td>
      <td>{{list.dt_17[0]}}</td>
      <td>{{list.dt_17[0]}}</td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td colspan="4">阳性判定基准</td>
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
</div>