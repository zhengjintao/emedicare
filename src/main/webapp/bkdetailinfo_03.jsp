<%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl03">
	<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="7">尿常规检查</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
     <td rowspan="6">
        <div class="ui inverted form lblcontent"><textarea rows="13" cols="1" style="resize: none"></textarea></div>
     </td>
      <td>尿糖（定性）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>尿蛋白（定性）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>尿胆原</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>尿PH</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>尿潜血</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>尿比重</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td class="cellheader" rowspan="4">尿沉渣检查</td>
      <td rowspan="4"><div class="ui inverted form lblcontent"><textarea rows="7" cols="1" style="resize: none"></textarea></div></td>
      <td>尿沉渣白细胞</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>尿沉渣红细胞</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>尿沉渣（鳞状上皮）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>尿沉渣（肾小管上皮）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    
    <tr>
      <td class="cellheader" rowspan="7">肾</td>
      <td rowspan="7"><div class="ui inverted form lblcontent"><textarea rows="13" cols="1" style="resize: none"></textarea></div></td>
      <td>肌酐</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>尿素氮</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>eGFR</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>钠（Na）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>钾（K）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>氯（Cl）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>钙（Ca）</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td colspan="9"></td>
    </tr>
  </tbody>
</table>

<table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader" style="width:100px" rowspan="9">血常规</td>
      <td class="cellheader">判定</td>
      <td class="cellheader">检查项目</td>
      <td class="cellheader">标准值/单位</td>
      <td class="cellheader">本次</td>
      <td class="cellheader">上次</td>
      <td class="cellheader">上上次</td>
    </tr>
    <tr>
      <td rowspan="8"><div class="ui inverted form lblcontent"><textarea rows="13" cols="1" style="resize: none"></textarea></div></td>
      <td>白细胞计数</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>红细胞计数</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
     <tr>
      <td>血红蛋白</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>红细胞压积</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>平均红细胞体积</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>平均红细胞血红蛋白浓度</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
    <tr>
      <td>血小板计数</td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
      <td><div class="ui input" style="width:100px;height:30px"> <input type="text"></div></td>
    </tr>
  </tbody>
</table>
</div>