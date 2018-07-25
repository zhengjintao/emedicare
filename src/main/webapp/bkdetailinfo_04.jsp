 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl04">
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="6">胸部X线检查</td>
      <td class="cellheader" style="width:100px" >判定</td>
      <td class="cellheader" colspan="4">本次</td>
    </tr>
    <tr>
      <td rowspan="5"><div class="ui inverted form lblcontent"><textarea rows="13" cols="1" style="resize: none"></textarea></div></td>
      <td>部位</td>
      <td colspan="3"><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td colspan="3"><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td colspan="2">上次</td>
      <td colspan="2">上上次</td>
    </tr>
    <tr>
      <td>部位</td>
      <td>所见</td>
      <td>部位</td>
      <td>所见</td>
    </tr>
    <tr>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="6">脂质</td>
      <td class="cellheader" style="width:100px" >判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="5"><div class="ui inverted form lblcontent"><textarea rows="13" cols="1" style="resize: none"></textarea></div></td>
      <td>总胆固醇</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>中性脂肪</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>高密度脂蛋白总胆固醇</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>低密度脂蛋白总胆固醇</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td colspan="5">
      <div class="ui inverted form lblcontent"><textarea rows="3" cols="1" style="resize: none"></textarea></div>
      </td>
    </tr>
  </tbody>
</table>
<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="14">肝功能检查</td>
      <td class="cellheader" style="width:100px" >判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
    </tr>
    <tr>
      <td rowspan="13">
      <div class="ui inverted form lblcontent"><textarea rows="35" cols="1" style="resize: none"></textarea></div>
      </td>
      <td>总胆红素（T-BIL）</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>ZTT</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>TTT</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>AST</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>ALT</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>γ－GTP</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>总蛋白（TP）</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>白蛋白</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>A/G比</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>ALP</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>LAP</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>ChE</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>LDH</td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td colspan="5">
      <div class="ui inverted form lblcontent"><textarea rows="3" cols="1" style="resize: none"></textarea></div>
      </td>
    </tr>
  </tbody>
</table>
</div>