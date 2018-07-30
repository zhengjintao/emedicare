<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl18">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">检查结果查询</h1>
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">血压脉搏检查解析结果</td>
    </tr>
    <tr>
      <td>姓名：</td>
      <td>{{list.dt_18[0]}}</td>
      <td>ID：</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
    <tr>
      <td>年龄：</td>
      <td>{{list.dt_18[0]}}</td>
      <td>身高：</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
    <tr>
      <td>BMI：</td>
      <td>{{list.dt_18[0]}}</td>
      <td>体重：</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">血管硬度（ｂaPWV）</td>
    </tr>
    <tr>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">足部血管阻塞检测(ABI)</td>
    </tr>
    <tr>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">定期检查</td>
    </tr>
    <tr>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
      <td>{{list.dt_18[0]}}</td>
    </tr>
  </tbody>
</table>
</div>