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
      <td class="cellheader" style="width:20%">ID</td>
      <td>{{list.dt_14[0]}}</td>
      <td class="cellheader" style="width:20%">检查日期</td>
      <td>{{list.dt_14[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader">姓名</td>
      <td>{{list.dt_14[0]}}</td>
      <td class="cellheader">年龄/性别</td>
      <td>{{list.dt_14[0]}}</td>
    </tr>
    <tr>
      <td colspan="4"></td>
    </tr>
    <tr>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">检查结果</td>
      <td class="cellheader">判定</td>
      <td class="cellheader"></td>
    </tr>
    <tr>
      <td>血氧饱和度</td>
      <td> </td>
      <td>{{list.dt_14[0]}}</td>
      <td>{{list.dt_14[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader">判定区分</td>
      <td class="cellheader" colspan="3">说明事项</td>
    </tr>
    <tr>
      <td>判定区分判定区分判定区分</td>
      <td colspan="3">说明说明说明说明说明说明</td>
    </tr>
  </tbody>
</table>
</div>