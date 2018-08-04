<%@ page import="java.util.List"%>
<%@ page import="com.bwc.biz.emedicare.common.StringUtil"%>
<html ng-app="listApp">
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>診査详细</title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script>
initdata=[];
initdata.name = '<%=request.getAttribute("name")%>';
initdata.historydate = '<%=request.getAttribute("historydate")%>';
initdata.historyno = '<%=request.getAttribute("historyno")%>';
exturl= "historydate=" + initdata.historydate + "&historyno=" + initdata.historyno +"&name=" + initdata.name;
</script>
<script src="assets/js/detailcommon.js"></script>
<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>
<script src="angularjs/angular.min.js"></script>

<script type="text/javascript">
  var app = angular.module('listApp',[]);
  
  app.config(function($provide){
          
      $provide.factory("transFormFactory",function(){
          return {
              transForm : function(obj){
                  var str = [];  
                  for(var p in obj){  
                    str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));  
                  } 
                  return str.join("&");  
              }
          };
      });
  });
  
app.controller('ListController', function($scope,$http,transFormFactory) {
	var list = this;
	  list.sheets = constsheets;
	  list.dt_13 = new Array();
	  <%List<String> dataList = (List<String>) request.getAttribute("detailDataList13");%>;
	  <%for (int i = 0; i < dataList.size(); i++) {%>  
	       list.dt_13[<%=i%>] = "<%=StringUtil.javaScriptStringEnc(dataList.get(i))%>";
	   <%}%>
	  (function(){
		  $scope.url =  "exploratorydetail.do";
		  var postdata = {'mode':'list', 'expid':list.expid, 'sheetid': '13'};
	      $http(
	  		{
	  			method:"POST",
	  			url:$scope.url,
	  			data:postdata,
	  			transformRequest:transFormFactory.transForm,
	  			headers:{'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	  		}).then(function (result) {
	  			list.record = result.data.record;
	          }).catch(function (result) {
	          	list.message = "SORRY!エラーが発生しました。";
	          	$('.ui.basic.modal') .modal('show');
	          });
	      
	  })();
  
  list.showsidebar = function(){
	  $('.ui.sidebar').sidebar('toggle');
  }
  
  var item = list.sheets[12];
  list.sheetname = item.shortname;
});
</script>
<style>
.cellheader{
    background-color:#c4e8fc
}
</style>
</head>
<body ng-controller="ListController as list">
<div class="ui top attached  menu">
  <a class="item" ng-click="list.showsidebar()">
    <i class="sidebar icon"></i>
    更多
  </a>
  <div class="item">
  </div>
  <div class="item">
  {{list.sheetname}}
  </div>
  <div class="item">
  </div>
  <div class="right menu">
      
      <div class="vertically fitted borderless item">
        <a href="exploratory.do"><button class="mini ui button">返回一览</button></a>
      </div>
    </div>
</div>
<div class="ui bottom attached segment pushable">

  <div class="ui sidebar  vertical menu">
    <a class="item" ><h3>诊查记录20180612</h3></a>
    <a class="item" ng-repeat="eachitem in list.sheets" href="{{eachitem.href}}">{{eachitem.name}}</a>
    <div style="height:100px"></div>
  </div>
  <div class="pusher">
  <div class="ui segment">
  <table class="ui unstackable celled structured table">
  <tbody>
    <tr>
      <td class="cellheader">检查名称</td>
      <td class="cellheader">结果</td>
      <td class="cellheader">单位</td>
      <td class="cellheader">基准值</td>
    </tr>
    <tr>
      <td>B脂蛋白</td>
      <td>{{list.dt_13[0]}}</td>
      <td>{{list.dt_13[1]}}</td>
      <td>{{list.dt_13[2]}}</td>
    </tr>
    <tr>
      <td>CA19-9</td>
      <td>{{list.dt_13[6]}}</td>
      <td>{{list.dt_13[7]}}</td>
      <td>{{list.dt_13[8]}}</td>
    </tr>
    <tr>
      <td>便-血红蛋白（1）</td>
      <td>{{list.dt_13[12]}}</td>
      <td>{{list.dt_13[13]}}</td>
      <td>{{list.dt_13[14]}}</td>
    </tr>
    <tr>
      <td>便-血红蛋白（2）</td>
      <td>{{list.dt_13[18]}}</td>
      <td>{{list.dt_13[19]}}</td>
      <td>{{list.dt_13[20]}}</td>
    </tr>
    <tr>
      <td>胃蛋白酶原</td>
      <td>{{list.dt_13[24]}}</td>
      <td>{{list.dt_13[25]}}</td>
      <td>{{list.dt_13[26]}}</td>
    </tr>
    <tr>
      <td>PG1浓度</td>
      <td>{{list.dt_13[30]}}</td>
      <td>{{list.dt_13[31]}}</td>
      <td>{{list.dt_13[32]}}</td>
    </tr>
    <tr>
      <td>PG2浓度</td>
      <td>{{list.dt_13[36]}}</td>
      <td>{{list.dt_13[37]}}</td>
      <td>{{list.dt_13[38]}}</td>
    </tr>
    <tr>
      <td>PG1/PG2 比</td>
      <td>{{list.dt_13[42]}}</td>
      <td>{{list.dt_13[43]}}</td>
      <td>{{list.dt_13[44]}}</td>
    </tr>
    <tr>
      <td>判定</td>
      <td>{{list.dt_13[48]}}</td>
      <td>{{list.dt_13[49]}}</td>
      <td>{{list.dt_13[50]}}</td>
    </tr>
    <tr>
      <td>胃癌风险</td>
      <td>{{list.dt_13[54]}}</td>
      <td>{{list.dt_13[55]}}</td>
      <td>{{list.dt_13[56]}}</td>
    </tr>
    <tr>
      <td>幽门螺旋杆菌</td>
      <td>{{list.dt_13[60]}}</td>
      <td>{{list.dt_13[61]}}</td>
      <td>{{list.dt_13[62]}}</td>
    </tr>
    <tr>
      <td>判定</td>
      <td>{{list.dt_13[66]}}</td>
      <td>{{list.dt_13[67]}}</td>
      <td>{{list.dt_13[68]}}</td>
    </tr>
    <tr>
      <td>结果</td>
      <td>{{list.dt_13[72]}}</td>
      <td>{{list.dt_13[73]}}</td>
      <td>{{list.dt_13[74]}}</td>
    </tr>
    <tr>
      <td>HPV-DNA-H</td>
      <td>{{list.dt_13[78]}}</td>
      <td>{{list.dt_13[79]}}</td>
      <td>{{list.dt_13[80]}}</td>
    </tr>
    <tr>
      <td>血沉</td>
      <td>{{list.dt_13[84]}}</td>
      <td>{{list.dt_13[85]}}</td>
      <td>{{list.dt_13[86]}}</td>
    </tr>
    <tr>
      <td>TP(总蛋白)</td>
      <td>{{list.dt_13[90]}}</td>
      <td>{{list.dt_13[91]}}</td>
      <td>{{list.dt_13[92]}}</td>
    </tr>
    <tr>
      <td>白蛋白</td>
      <td>{{list.dt_13[96]}}</td>
      <td>{{list.dt_13[97]}}</td>
      <td>{{list.dt_13[98]}}</td>
    </tr>
    <tr>
      <td>A/G</td>
      <td>{{list.dt_13[102]}}</td>
      <td>{{list.dt_13[103]}}</td>
      <td>{{list.dt_13[104]}}</td>
    </tr>
    <tr>
      <td>T-bil</td>
      <td>{{list.dt_13[108]}}</td>
      <td>{{list.dt_13[109]}}</td>
      <td>{{list.dt_13[110]}}</td>
    </tr>
    <tr>
      <td>TTT</td>
      <td>{{list.dt_13[114]}}</td>
      <td>{{list.dt_13[115]}}</td>
      <td>{{list.dt_13[116]}}</td>
    </tr>
    <tr>
      <td>ZTT</td>
      <td>{{list.dt_13[120]}}</td>
      <td>{{list.dt_13[121]}}</td>
      <td>{{list.dt_13[122]}}</td>
    </tr>
    <tr>
      <td>AST（GOT）</td>
      <td>{{list.dt_13[126]}}</td>
      <td>{{list.dt_13[127]}}</td>
      <td>{{list.dt_13[128]}}</td>
    </tr>
    <tr>
      <td>ALT（GPT）</td>
      <td>{{list.dt_13[132]}}</td>
      <td>{{list.dt_13[133]}}</td>
      <td>{{list.dt_13[134]}}</td>
    </tr>
    <tr>
      <td>LDH</td>
      <td>{{list.dt_13[138]}}</td>
      <td>{{list.dt_13[139]}}</td>
      <td>{{list.dt_13[140]}}</td>
    </tr>
    <tr>
      <td>ALP</td>
      <td>{{list.dt_13[144]}}</td>
      <td>{{list.dt_13[145]}}</td>
      <td>{{list.dt_13[146]}}</td>
    </tr>
    <tr>
      <td>GGTP</td>
      <td>{{list.dt_13[150]}}</td>
      <td>{{list.dt_13[151]}}</td>
      <td>{{list.dt_13[152]}}</td>
    </tr>
    <tr>
      <td>LAP</td>
      <td>{{list.dt_13[156]}}</td>
      <td>{{list.dt_13[157]}}</td>
      <td>{{list.dt_13[163]}}</td>
    </tr>
    <tr>
      <td>ChE</td>
      <td>{{list.dt_13[162]}}</td>
      <td>{{list.dt_13[163]}}</td>
      <td>{{list.dt_13[164]}}</td>
    </tr>
    <tr>
      <td>CK（CPK）</td>
      <td>{{list.dt_13[168]}}</td>
      <td>{{list.dt_13[169]}}</td>
      <td>{{list.dt_13[170]}}</td>
    </tr>
    <tr>
      <td>BNP</td>
      <td>{{list.dt_13[174]}}</td>
      <td>{{list.dt_13[175]}}</td>
      <td>{{list.dt_13[176]}}</td>
    </tr>
    <tr>
      <td>淀粉酶（血清）</td>
      <td>{{list.dt_13[180]}}</td>
      <td>{{list.dt_13[181]}}</td>
      <td>{{list.dt_13[182]}}</td>
    </tr>
    <tr>
      <td>BUN</td>
      <td>{{list.dt_13[186]}}</td>
      <td>{{list.dt_13[187]}}</td>
      <td>{{list.dt_13[188]}}</td>
    </tr>
    <tr>
      <td>肌酐</td>
      <td>{{list.dt_13[192]}}</td>
      <td>{{list.dt_13[193]}}</td>
      <td>{{list.dt_13[194]}}</td>
    </tr>
    <tr>
      <td>推算GFR</td>
      <td>{{list.dt_13[198]}}</td>
      <td>{{list.dt_13[199]}}</td>
      <td>{{list.dt_13[200]}}</td>
    </tr>
    <tr>
      <td>UA（尿酸）</td>
      <td>{{list.dt_13[204]}}</td>
      <td>{{list.dt_13[205]}}</td>
      <td>{{list.dt_13[206]}}</td>
    </tr>
    <tr>
      <td>Na</td>
      <td>{{list.dt_13[210]}}</td>
      <td>{{list.dt_13[211]}}</td>
      <td>{{list.dt_13[212]}}</td>
    </tr>
    <tr>
      <td>K</td>
      <td>{{list.dt_13[216]}}</td>
      <td>{{list.dt_13[217]}}</td>
      <td>{{list.dt_13[218]}}</td>
    </tr>
    <tr>
      <td>Cl</td>
      <td>{{list.dt_13[222]}}</td>
      <td>{{list.dt_13[223]}}</td>
      <td>{{list.dt_13[224]}}</td>
    </tr>
    <tr>
      <td>Ca</td>
      <td>{{list.dt_13[228]}}</td>
      <td>{{list.dt_13[229]}}</td>
      <td>{{list.dt_13[230]}}</td>
    </tr>
    <tr>
      <td>MGS（镁）</td>
      <td>{{list.dt_13[234]}}</td>
      <td>{{list.dt_13[235]}}</td>
      <td>{{list.dt_13[236]}}</td>
    </tr>
    <tr>
      <td>T-胆固醇</td>
      <td>{{list.dt_13[240]}}</td>
      <td>{{list.dt_13[241]}}</td>
      <td>{{list.dt_13[242]}}</td>
    </tr>
    <tr>
      <td>TG</td>
      <td>{{list.dt_13[246]}}</td>
      <td>{{list.dt_13[247]}}</td>
      <td>{{list.dt_13[248]}}</td>
    </tr>
    <tr>
      <td>HDL胆固醇</td>
      <td>{{list.dt_13[252]}}</td>
      <td>{{list.dt_13[253]}}</td>
      <td>{{list.dt_13[254]}}</td>
    </tr>
    <tr>
      <td>LDL胆固醇</td>
      <td>{{list.dt_13[258]}}</td>
      <td>{{list.dt_13[259]}}</td>
      <td>{{list.dt_13[260]}}</td>
    </tr>
    <tr>
      <td>HBA1C（NGSP）</td>
      <td>{{list.dt_13[264]}}</td>
      <td>{{list.dt_13[265]}}</td>
      <td>{{list.dt_13[266]}}</td>
    </tr>
    <tr>
      <td>血糖（BS）</td>
      <td>{{list.dt_13[270]}}</td>
      <td>{{list.dt_13[271]}}</td>
      <td>{{list.dt_13[272]}}</td>
    </tr>
    <tr>
      <td>胰岛素（IRI）</td>
      <td>{{list.dt_13[276]}}</td>
      <td>{{list.dt_13[277]}}</td>
      <td>{{list.dt_13[278]}}</td>
    </tr>
    <tr>
      <td>TSH</td>
      <td>{{list.dt_13[282]}}</td>
      <td>{{list.dt_13[283]}}</td>
      <td>{{list.dt_13[284]}}</td>
    </tr>
    <tr>
      <td>FT4</td>
      <td>{{list.dt_13[3]}}</td>
      <td>{{list.dt_13[4]}}</td>
      <td>{{list.dt_13[5]}}</td>
    </tr>
    <tr>
      <td>FT3</td>
      <td>{{list.dt_13[9]}}</td>
      <td>{{list.dt_13[10]}}</td>
      <td>{{list.dt_13[11]}}</td>
    </tr>
    <tr>
      <td>甲状腺球蛋白AB</td>
      <td>{{list.dt_13[15]}}</td>
      <td>{{list.dt_13[16]}}</td>
      <td>{{list.dt_13[17]}}</td>
    </tr>
    <tr>
      <td>TPO抗体</td>
      <td>{{list.dt_13[21]}}</td>
      <td>{{list.dt_13[22]}}</td>
      <td>{{list.dt_13[23]}}</td>
    </tr>
    <tr>
      <td>CEA</td>
      <td>{{list.dt_13[27]}}</td>
      <td>{{list.dt_13[28]}}</td>
      <td>{{list.dt_13[29]}}</td>
    </tr>
    <tr>
      <td>AFP</td>
      <td>{{list.dt_13[33]}}</td>
      <td>{{list.dt_13[34]}}</td>
      <td>{{list.dt_13[35]}}</td>
    </tr>
    <tr>
      <td>PIVKA-2</td>
      <td>{{list.dt_13[39]}}</td>
      <td>{{list.dt_13[40]}}</td>
      <td>{{list.dt_13[41]}}</td>
    </tr>
    <tr>
      <td>CA15-3</td>
      <td>{{list.dt_13[45]}}</td>
      <td>{{list.dt_13[46]}}</td>
      <td>{{list.dt_13[47]}}</td>
    </tr>
    <tr>
      <td>CA125</td>
      <td>{{list.dt_13[51]}}</td>
      <td>{{list.dt_13[52]}}</td>
      <td>{{list.dt_13[53]}}</td>
    </tr>
    <tr>
      <td>CYFRA</td>
      <td>{{list.dt_13[57]}}</td>
      <td>{{list.dt_13[58]}}</td>
      <td>{{list.dt_13[59]}}</td>
    </tr>
    <tr>
      <td>CRP定量</td>
      <td>{{list.dt_13[63]}}</td>
      <td>{{list.dt_13[64]}}</td>
      <td>{{list.dt_13[65]}}</td>
    </tr>
    <tr>
      <td>CRP测定值</td>
      <td>{{list.dt_13[69]}}</td>
      <td>{{list.dt_13[70]}}</td>
      <td>{{list.dt_13[71]}}</td>
    </tr>
    <tr>
      <td>CRP判定</td>
      <td>{{list.dt_13[75]}}</td>
      <td>{{list.dt_13[76]}}</td>
      <td>{{list.dt_13[77]}}</td>
    </tr>
    <tr>
      <td>类风湿因子定量</td>
      <td>{{list.dt_13[81]}}</td>
      <td>{{list.dt_13[82]}}</td>
      <td>{{list.dt_13[83]}}</td>
    </tr>
    <tr>
      <td>TPLA定性</td>
      <td>{{list.dt_13[87]}}</td>
      <td>{{list.dt_13[88]}}</td>
      <td>{{list.dt_13[89]}}</td>
    </tr>
    <tr>
      <td>RPR定性</td>
      <td>{{list.dt_13[93]}}</td>
      <td>{{list.dt_13[94]}}</td>
      <td>{{list.dt_13[95]}}</td>
    </tr>
    <tr>
      <td>HBS抗原(精密)</td>
      <td>{{list.dt_13[99]}}</td>
      <td>{{list.dt_13[100]}}</td>
      <td>{{list.dt_13[101]}}</td>
    </tr>
    <tr>
      <td>判定</td>
      <td>{{list.dt_13[105]}}</td>
      <td>{{list.dt_13[106]}}</td>
      <td>{{list.dt_13[107]}}</td>
    </tr>
    <tr>
      <td>浓度</td>
      <td>{{list.dt_13[111]}}</td>
      <td>{{list.dt_13[112]}}</td>
      <td>{{list.dt_13[113]}}</td>
    </tr>
    <tr>
      <td>HBS抗体(精密)</td>
      <td>{{list.dt_13[117]}}</td>
      <td>{{list.dt_13[118]}}</td>
      <td>{{list.dt_13[119]}}</td>
    </tr>
    <tr>
      <td>判定</td>
      <td>{{list.dt_13[123]}}</td>
      <td>{{list.dt_13[124]}}</td>
      <td>{{list.dt_13[125]}}</td>
    </tr>
    <tr>
      <td>浓度</td>
      <td>{{list.dt_13[129]}}</td>
      <td>{{list.dt_13[130]}}</td>
      <td>{{list.dt_13[131]}}</td>
    </tr>
    <tr>
      <td>HCV抗体</td>
      <td>{{list.dt_13[135]}}</td>
      <td>{{list.dt_13[136]}}</td>
      <td>{{list.dt_13[137]}}</td>
    </tr>
    <tr>
      <td>判定</td>
      <td>{{list.dt_13[141]}}</td>
      <td>{{list.dt_13[142]}}</td>
      <td>{{list.dt_13[143]}}</td>
    </tr>
    <tr>
      <td>C-IDX</td>
      <td>{{list.dt_13[147]}}</td>
      <td>{{list.dt_13[148]}}</td>
      <td>{{list.dt_13[149]}}</td>
    </tr>
    <tr>
      <td>HIV-AG.AB</td>
      <td>{{list.dt_13[153]}}</td>
      <td>{{list.dt_13[154]}}</td>
      <td>{{list.dt_13[155]}}</td>
    </tr>
    <tr>
      <td>血型（ABO）</td>
      <td>{{list.dt_13[159]}}</td>
      <td>{{list.dt_13[160]}}</td>
      <td>{{list.dt_13[161]}}</td>
    </tr>
    <tr>
      <td>血型（Rh）</td>
      <td>{{list.dt_13[165]}}</td>
      <td>{{list.dt_13[166]}}</td>
      <td>{{list.dt_13[167]}}</td>
    </tr>
    <tr>
      <td>WBC</td>
      <td>{{list.dt_13[171]}}</td>
      <td>{{list.dt_13[172]}}</td>
      <td>{{list.dt_13[173]}}</td>
    </tr>
    <tr>
      <td>RBC</td>
      <td>{{list.dt_13[177]}}</td>
      <td>{{list.dt_13[178]}}</td>
      <td>{{list.dt_13[179]}}</td>
    </tr>
    <tr>
      <td>血红蛋白</td>
      <td>{{list.dt_13[183]}}</td>
      <td>{{list.dt_13[184]}}</td>
      <td>{{list.dt_13[185]}}</td>
    </tr>
    <tr>
      <td>红细胞压积</td>
      <td>{{list.dt_13[189]}}</td>
      <td>{{list.dt_13[190]}}</td>
      <td>{{list.dt_13[191]}}</td>
    </tr>
    <tr>
      <td>MCV</td>
      <td>{{list.dt_13[195]}}</td>
      <td>{{list.dt_13[196]}}</td>
      <td>{{list.dt_13[197]}}</td>
    </tr>
    <tr>
      <td>MCH</td>
      <td>{{list.dt_13[201]}}</td>
      <td>{{list.dt_13[202]}}</td>
      <td>{{list.dt_13[203]}}</td>
    </tr>
    <tr>
      <td>MCHC</td>
      <td>{{list.dt_13[207]}}</td>
      <td>{{list.dt_13[208]}}</td>
      <td>{{list.dt_13[209]}}</td>
    </tr>
    <tr>
      <td>血小板</td>
      <td>{{list.dt_13[213]}}</td>
      <td>{{list.dt_13[214]}}</td>
      <td>{{list.dt_13[215]}}</td>
    </tr>
    <tr>
      <td>血沉30分</td>
      <td>{{list.dt_13[219]}}</td>
      <td>{{list.dt_13[220]}}</td>
      <td>{{list.dt_13[221]}}</td>
    </tr>
    <tr>
      <td>血沉60分</td>
      <td>{{list.dt_13[225]}}</td>
      <td>{{list.dt_13[226]}}</td>
      <td>{{list.dt_13[227]}}</td>
    </tr>
    <tr>
      <td>血沉120分</td>
      <td>{{list.dt_13[231]}}</td>
      <td>{{list.dt_13[232]}}</td>
      <td>{{list.dt_13[233]}}</td>
    </tr>
    <tr>
      <td>尿蛋白（定性）</td>
      <td>{{list.dt_13[237]}}</td>
      <td>{{list.dt_13[238]}}</td>
      <td>{{list.dt_13[239]}}</td>
    </tr>
    <tr>
      <td>尿糖（定性）</td>
      <td>{{list.dt_13[243]}}</td>
      <td>{{list.dt_13[244]}}</td>
      <td>{{list.dt_13[245]}}</td>
    </tr>
    <tr>
      <td>尿胆原</td>
      <td>{{list.dt_13[249]}}</td>
      <td>{{list.dt_13[250]}}</td>
      <td>{{list.dt_13[251]}}</td>
    </tr>
    <tr>
      <td>尿PH</td>
      <td>{{list.dt_13[255]}}</td>
      <td>{{list.dt_13[256]}}</td>
      <td>{{list.dt_13[257]}}</td>
    </tr>
    <tr>
      <td>尿潜血</td>
      <td>{{list.dt_13[261]}}</td>
      <td>{{list.dt_13[262]}}</td>
      <td>{{list.dt_13[263]}}</td>
    </tr>
    <tr>
      <td>尿比重</td>
      <td>{{list.dt_13[267]}}</td>
      <td>{{list.dt_13[268]}}</td>
      <td>{{list.dt_13[269]}}</td>
    </tr>
    <tr>
      <td>尿沉渣</td>
      <td>{{list.dt_13[273]}}</td>
      <td>{{list.dt_13[274]}}</td>
      <td>{{list.dt_13[275]}}</td>
    </tr>
    <tr>
      <td>RBC</td>
      <td>{{list.dt_13[279]}}</td>
      <td>{{list.dt_13[280]}}</td>
      <td>{{list.dt_13[281]}}</td>
    </tr>
    <tr>
      <td>WBC</td>
      <td>{{list.dt_13[285]}}</td>
      <td>{{list.dt_13[286]}}</td>
      <td>{{list.dt_13[287]}}</td>
    </tr>
    <tr>
      <td>鳞状上皮</td>
      <td>{{list.dt_13[288]}}</td>
      <td>{{list.dt_13[289]}}</td>
      <td>{{list.dt_13[290]}}</td>
    </tr>
  </tbody>
</table>
</div>
  </div>
</div>
</body>