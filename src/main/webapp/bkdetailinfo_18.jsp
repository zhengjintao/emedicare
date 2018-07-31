<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl18">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">检查结果查询(血压脉搏检查)</h1>
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">血压脉搏检查解析结果</td>
    </tr>
    <tr>
      <td>姓名：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[0]></div></td>
      <td>ID：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[1]></div></td>
    </tr>
    <tr>
      <td>年龄：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[2]></div></td>
      <td>身高：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[3]></div></td>
    </tr>
    <tr>
      <td>BMI：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[4]></div></td>
      <td>体重：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[5]></div></td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">血管硬度（ｂaPWV）</td>
    </tr>
    <tr>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[6]></div></td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[7]></div></td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[8]></div></td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[9]></div></td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="7">足部血管阻塞检测(ABI)</td>
    </tr>
    <tr>
      <td colspan="5">本次检查结果</td>
      <td>心率：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[12]></div></td>
    </tr>
    <tr>
      <td colspan="3"></td>
      <td>右臂</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[13]></div></td>
      <td>左臂</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[13]></div></td>
    </tr>
    <tr>
      <td rowspan="2">ABI</td>
      <td>右足：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[12]></div></td>
      <td rowspan="2">右脚腕</td>
      <td rowspan="2"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[13]></div></td>
      <td rowspan="2">左脚腕</td>
      <td rowspan="2"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[13]></div></td>
    </tr>
    <tr>
      <td>左足：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[12]></div></td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" colspan="4">定期检查</td>
    </tr>
    <tr>
      <td colspan="4"> <div class="ui inverted form lblcontent"><textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_02[0]"></textarea></div></td>
    </tr>
  </tbody>
</table>
</div>