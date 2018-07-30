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
      <td>{{list.dt_15[0]}}</td>
      <td class="cellheader" style="width:20%">检查日期</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader">姓名</td>
      <td>{{list.dt_15[0]}}</td>
      <td class="cellheader">报告日期</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader">担任医生</td>
      <td>{{list.dt_15[0]}}</td>
      <td class="cellheader">年龄/性别</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
   
    <tr>
      <td colspan="4">{{list.dt_15[0]}}</td>
    </tr>
    <tr>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">检查结果</td>
      <td class="cellheader">基准值</td>
      <td class="cellheader">单位</td>
    </tr>
    <tr>
      <td>TSH</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
    <tr>
      <td>FT4</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
    <tr>
      <td>FT3</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
    <tr>
      <td>抗甲状腺球蛋白抗体 （Tg-Ab）</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
    <tr>
      <td>抗甲状腺过氧化物酶抗体 （TPO-Ab）</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
      <td>{{list.dt_15[0]}}</td>
    </tr>
  </tbody>
</table>
</div>