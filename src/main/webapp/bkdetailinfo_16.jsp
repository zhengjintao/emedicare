<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl16">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">检查结果查询(肿瘤标志物)</h1>
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:20%">ID</td>
      <td></td>
      <td class="cellheader" style="width:20%">检查日期</td>
      <td></td>
    </tr>
    <tr>
      <td class="cellheader">姓名</td>
      <td></td>
      <td class="cellheader">报告日期</td>
      <td></td>
    </tr>
    <tr>
      <td class="cellheader">担任医生</td>
      <td></td>
      <td class="cellheader">年龄/性别</td>
      <td></td>
    </tr>
   
    <tr>
      <td colspan="4"></td>
    </tr>
    <tr>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">检查结果</td>
      <td class="cellheader" colspan="2">基准值</td>
    </tr>
    <tr>
      <td>AFP</td>
      <td>{{list.dt_16[0]}}</td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td>PIVKA-II</td>
      <td>{{list.dt_16[0]}}</td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td>CEA</td>
      <td>{{list.dt_16[0]}}</td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td>CA19-9</td>
      <td>{{list.dt_16[0]}}</td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td>CA15-3</td>
      <td>{{list.dt_16[0]}}</td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td>CA125</td>
      <td>{{list.dt_16[0]}}</td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td>CYFRA</td>
      <td>{{list.dt_16[0]}}</td>
      <td colspan="2"></td>
    </tr>
  </tbody>
</table>
</div>