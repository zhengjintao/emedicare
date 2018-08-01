<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl18">	
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="ui header cellheader" style="text-align: center" colspan="4">血压脉搏检查解析结果</td>
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
      <td class="ui header cellheader" style="text-align: center" colspan="5">血管硬度（ｂaPWV）</td>
    </tr>
    <tr>
      <td colspan="4">根据检查结果推算您的血管年龄 </td>
      <td rowspan="5"><img width=400px height=400px src="assets/images/chart01.png" /></td>
    </tr>
    <tr>
      <td colspan="4">随着年龄的增长，血管会逐步老化，需多加注意。</td>
    
    </tr>
    <tr>
      <td style="height:250px" colspan="4"></td>
    </tr>
    <tr>
      <td rowspan="2">baPWV<br>（cm/s）</td>
       <td colspan="3"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[6]></div></td>
    </tr>
    <tr>
       <td colspan="3"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[7]></div></td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="ui header cellheader" style="text-align: center" colspan="7">足部血管阻塞检测(ABI)</td>
    </tr>
    <tr>
      <td colspan="5">本次检查结果</td>
      <td>心率：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[8]></div></td>
    </tr>
    <tr>
      <td colspan="3"></td>
      <td>右臂</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[9]></div></td>
      <td>左臂</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[10]></div></td>
    </tr>
    <tr>
      <td rowspan="2">ABI</td>
      <td>右足：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[11]></div></td>
      <td rowspan="2">右脚腕</td>
      <td rowspan="2"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[12]></div></td>
      <td rowspan="2">左脚腕</td>
      <td rowspan="2"><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[13]></div></td>
    </tr>
    <tr>
      <td>左足：</td>
      <td><div class="ui input" style="height:100%; width:100%"> <input type="text" ng-model=list.dt_18[14]></div></td>
    </tr>
  </tbody>
</table>
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="ui header cellheader" style="text-align: center" colspan="4">定期检查</td>
    </tr>
    <tr>
      <td colspan="4"> <div class="ui inverted form lblcontent"><textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_18[15]"></textarea></div></td>
    </tr>
  </tbody>
</table>
</div>