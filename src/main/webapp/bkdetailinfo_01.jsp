 <%@ page import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 <style>
.cellheader {
	background-color: #c4e8fc
}
</style>
<div class="ui bottom attached active tab segment" data-tab="dtl01">
	<div id="table1" class="ui attached segment" style="margin-top: auto;">
		<div class="ui equal width grid">
			<div class="column" style="padding-bottom:0px">
				<div class="ui labeled input">
					<div class="ui label">姓名</div>
					<input id="eusername" name="eusername" type="text"
						readonly="readonly" ng-model="list.dt_01[0]">
				</div>
			</div>
			<div class="column" style="padding-bottom:0px">
				<div class="ui labeled input">
					<div class="ui label">ID</div>
					<input id="eusername" name="eusername" type="text"
						readonly="readonly" ng-model="list.dt_01[2]">
				</div>
			</div>
			<div class="column" style="padding-bottom:0px">
				<div class="ui labeled input">
					<div class="ui label">性别</div>
					<input id="eusername" name="eusername" type="text"
						readonly="readonly" ng-model="list.dt_01[4]">
				</div>
			</div>
		</div>
		<div class="ui equal width grid">
			<div class="column">
				<div class="ui labeled input">
					<div class="ui label">年龄</div>
					<input id="eusername" name="eusername" type="text"
						readonly="readonly" ng-model="list.dt_01[3]">
				</div>
			</div>
			<div class="column">
				<div class="ui labeled input">
					<div class="ui label">检查日期</div>
					<input id="eusername" name="eusername" type="text"
						readonly="readonly" ng-model="list.dt_01[1]">
				</div>
			</div>
			<div class="column"></div>
		</div>
		<div class="ui equal width grid">
			<div class="eight wide column">
				<h3 class="ui top header" style="margin-top: 10px;">日常生活习惯</h3>
				<table class="ui unstackable celled structured table">
				    <tbody>
					<tr class="cellheader">
						<td width="10%" style="text-align: center;"></td>
						<td width="50%" style="text-align: center;"
							colspan="2">现在的生活习惯</td>
					</tr>
					<tr>
						<td rowspan="4" >饮食</td>
						<td>饮食速度</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[5]"></div></td>
					</tr>
					<tr>
						<td>不吃早饭（3次以上）</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[6]"></div></td>
					</tr>
					<tr>
						<td>晚餐就餐晚</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[7]"></div></td>
					</tr>
					<tr>
						<td>吃夜宵</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[8]"></div></td>
					</tr>
					<tr>
						<td rowspan="3">运动</td>
						<td>经常运动</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[9]"></div></td>
					</tr>
					<tr>
						<td>在实行身体活动计划</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[10]"></div></td>
					</tr>
					<tr>
						<td>步行速度快</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[11]"></div></td>
					</tr>

					<tr>
						<td rowspan="2">饮酒</td>
						<td>频度</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[12]"></div></td>
					</tr>
					<tr>
						<td>饮酒量</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[13]"></div></td>
					</tr>
					<tr>
						<td>吸烟</td>
						<td>烟龄</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[14]"></div></td>
					</tr>
					<tr>
						<td>睡眠</td>
						<td>睡眠是否充足</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[15]"></div></td>
					</tr>
					<tr>
						<td>精神压力焦虑感</td>
						<td>常有压力感</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[16]"></div></td>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="eight wide column">
				<h3 class="ui top header" style="margin-top: 10px;">问诊内容</h3>
				<table class="ui unstackable table">
					<tr class="cellheader">
						<td>自觉症状</td>
					</tr>
					<tr height="100px">
						<td>
							<div class="ui inverted form lblcontent">
								<div style="height: 4px"></div>
								<textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_01[17]"></textarea>
							</div>
						</td>
					</tr>
					<tr class="cellheader">
						<td>既往史•现病史</td>
					</tr>
					<tr>
						<td height="100px">
							<div class="ui inverted form lblcontent">
								<div style="height: 4px"></div>
								<textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_01[18]"></textarea>
							</div>
						</td>
					</tr>
					<tr class="cellheader">
						<td>检查状态</td>
					</tr>
					<tr height="100px">
						<td>
							<div class="ui inverted form lblcontent">
								<div style="height: 4px"></div>
								<textarea style="height: 100%; width: 100%; resize: none" ng-model="list.dt_01[19]"></textarea>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="wide column">
			<h3 class="ui top header" style="margin-top: 20px;">对于改善生活习惯的建议</h3>
			<div class="ui inverted form lblcontent">
				<div style="height: 4px"></div>
				<textarea style="height: 50px; width: 100%; resize: none" ng-model="list.dt_01[20]"></textarea>
			</div>
		</div>
		<div class="wide column">
			<h3 class="ui top header" style="margin-top: 20px;">服药历，吸烟经历</h3>
            <table class="ui unstackable celled structured table">
                <tbody>
					<tr>
						<td>服用高血压药历</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[21]"></div></td>
						<td>服用脂质代谢异常症药历</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[22]"></div></td>
					</tr>
					<tr>
						<td>服用糖尿病药历</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[23]"></div></td>
						<td>吸烟经历</td>
						<td style="padding:3px"><div class="ui input" style="width:100%;"> <input type="text" ng-model="list.dt_01[24]"></div></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>