<html>
<!-- Standard Meta -->
<meta http-equiv="content-type" charset="utf-8">

<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('.ui.accordion').accordion();
		$('#envelope').popup({
			popup : $('.custom.popup'),
			on : 'click'
		});
	});

	function tabclick(id) {
		var addtab = "tab2" == id ? "#tab2" : "#tab1";
		var rmvtab = "tab2" != id ? "#tab2" : "#tab1";
		$(addtab).attr("class", "active item");
		$(rmvtab).attr("class", "item");

		var showtab = "tab2" == id ? "#table2" : "#table1";
		var hidetab = "tab2" != id ? "#table2" : "#table1";
		$(showtab).show().css("margin", "0");
		$(hidetab).hide().css("margin", "0");
	}

	function sendmail() {
		$('#envelope').popup('hide all');
		var mail = $("#mail").val();
		var errmsg="";
		if (mail.length == 0) {
			errmsg ="收件地址必须输入";
		}
		
		if (mail.length > 0){
			var Regex = /^(?:\w+\.?)*\w+@(?:\w+\.).*\w+$/;
			if (!Regex.test(mail)){
				if (errmsg.length > 0) {
					errmsg = errmsg + "<br>";
				}
				errmsg = errmsg + "邮箱格式不正确";
			}
		}
		
		if (errmsg.length > 0) {
			$("#errmsg").html(errmsg);
			$('#cmodal').modal({
				closable : false

			}).modal('show');
			return false;
		}

		$.ajax({
			type : "post",
			url : "./sendmail.do?" + $("form").serialize(),
			dataType : "json",
			success : function(data) {
				$("#errmsg").html(data.message);
				$('#cmodal').modal({
					closable : false

				}).modal('show');
			},
			error : function() {
				alert("网络异常，请稍后重试");
			}
		});

	}
</script>
<style type="text/css">
body {
	margin-top: 10px;
	background-color: #FFFFFF;
}

body>.grid {
	height: 100%;
}

footer {
	display: block;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>


<body>
	<div style="width: 80%; margin-left: auto; margin-right: auto;">
		<jsp:include page="bkheader.jsp" />
		<div class="ui grid">
			<div class="column">
				<div class="ui breadcrumb">
					<a class="section" href="bkaccountlist.do"><h4>顧客一覧</h4></a> <i
						class="right angle icon divider"></i> <a class="section"
						href="bkhistorylist.do"><h4>本田慶応</h4></a> <i
						class="right angle icon divider"></i>
					<div class="active section">
						<h4>診断結果1</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="ui section divider"
			style="margin-top: 5px; margin-bottom: 0px"></div>
		<div class="ui top attached tabular menu">
			<div id="tab1" class="active item" onclick="tabclick('tab1')">健診結果報告書1</div>
			<div id="tab2" class="item" onclick="tabclick('tab2')">健診結果報告書2</div>
		</div>
		<div class="ui bottom attached active tab segment">
			<div id="table1" class="ui attached segment" style="margin-top: auto;">
				<div class="ui equal width grid">
					<div class="column">
						<div class="ui labeled input">
							<div class="ui label">姓名</div>
							<input id="eusername" name="eusername" type="text"
								readonly="readonly" value="张三">
						</div>
					</div>
					<div class="column">
						<div class="ui labeled input">
							<div class="ui label">ID</div>
							<input id="eusername" name="eusername" type="text"
								readonly="readonly" value="3289092">
						</div>
					</div>
					<div class="column">
						<div class="ui labeled input">
							<div class="ui label">性别</div>
							<input id="eusername" name="eusername" type="text"
								readonly="readonly" value="男">
						</div>
					</div>
				</div>
				<div class="ui equal width grid">
					<div class="column">
						<div class="ui labeled input">
							<div class="ui label">年龄</div>
							<input id="eusername" name="eusername" type="text"
								readonly="readonly" value="68">
						</div>
					</div>
					<div class="column">
						<div class="ui labeled input">
							<div class="ui label">检查日期</div>
							<input id="eusername" name="eusername" type="text"
								readonly="readonly" value="2018/10/12">
						</div>
					</div>
					<div class="column"></div>
				</div>
				<div class="ui equal width grid">
					<div class="eight wide column">
					<h3 class="ui top header" style="margin-top: 10px;">日常生活习惯</h3>
						<table border="1" class="ui unstackable celled table">
							<tr bgcolor="#00B5AB">
								<td width="10%" style="text-align: center; color: white"></td>
								<td width="50%" style="text-align: center; color: white" colspan="2">现在的生活习惯</td>
							</tr>
							<tr>
								<td rowspan="4">饮食</td>
								<td>饮食速度</td>
								<td>快</td>
							</tr>
							<tr>
								<td>不吃早饭（3次以上）</td>
								<td>快</td>
							</tr>
							<tr>
								<td>晚餐就餐晚</td>
								<td>偶尔</td>
							</tr>
							<tr>
								<td>吃夜宵</td>
								<td>偶尔</td>
							</tr>
							<tr>
								<td rowspan="3">运动</td>
								<td>经常运动</td>
								<td>否</td>
							</tr>
							<tr>
								<td>在实行身体活动计划</td>
								<td>是</td>
							</tr>
							<tr>
								<td>步行速度快</td>
								<td>中等</td>
							</tr>
							
							<tr>
								<td rowspan="2">饮酒</td>
								<td>频度</td>
								<td>周三次</td>
							</tr>
							<tr>
								<td>饮酒量</td>
								<td>400ml</td>
							</tr>
							<tr>
								<td>吸烟</td>
								<td>烟龄</td>
								<td>10年</td>
							</tr>
							<tr>
								<td>睡眠</td>
								<td>睡眠是否充足</td>
								<td>睡眠不足</td>
							</tr>
							<tr>
								<td>精神压力焦虑感</td>
								<td>常有压力感</td>
								<td>常有</td>
							</tr>
						</table>
					</div>
					<div class="eight wide column">
					<h3 class="ui top header" style="margin-top: 10px;">问诊内容</h3>
						<table class="ui unstackable table">
							<tr bgcolor="#00B5AB">
								<td>自觉症状</td>
							</tr>
							<tr height="100px">
								<td>
									<div class="ui inverted form lblcontent">
										<div style="height: 4px"></div>
										<textarea style="height: 100%; width: 100%; resize: none"
											readonly="readonly">早睡早起，少抽烟不喝酒，多运动</textarea>
									</div>
								</td>
							</tr>
							<tr bgcolor="#00B5AB">
								<td>既往史•现病史</td>
							</tr>
							<tr>
								<td height="100px">
									<div class="ui inverted form lblcontent">
										<div style="height: 4px"></div>
										<textarea style="height: 100%; width: 100%; resize: none"
											readonly="readonly">早睡早起，少抽烟不喝酒，多运动</textarea>
									</div>
								</td>
							</tr>
							<tr bgcolor="#00B5AB">
								<td>检查状态</td>
							</tr>
							<tr height="100px">
								<td>
									<div class="ui inverted form lblcontent">
										<div style="height: 4px"></div>
										<textarea style="height: 100%; width: 100%; resize: none">早睡早起，少抽烟不喝酒，多运动</textarea>
									</div>
								</td>
							</tr>
							<tr bgcolor="#00B5AB">
								<td>对于改善生活习惯的建议</td>
							</tr>
							<tr height="100px">
								<td>
									<div class="ui inverted form lblcontent">
										<div style="height: 4px"></div>
										<textarea style="height: 100%; width: 100%; resize: none">早睡早起，少抽烟不喝酒，多运动</textarea>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<table id="table2" border="1" class="ui unstackable celled table" style="display: none;">
				<tr bgcolor="#00B5AB">
					<th width="20%" style="text-align: center; color: white">检查项目</th>
					<th width="10%" style="text-align: center; color: white">判定</th>
					<th width="30%" style="text-align: center; color: white">明细项目</th>
					<th width="10%" style="text-align: center; color: white">标准值/单位</th>
					<th width="10%" style="text-align: center; color: white">本次</th>
					<th width="10%" style="text-align: center; color: white">上次</th>
					<th width="10%" style="text-align: center; color: white">上上次</th>
				</tr>
				<tr>
					<td rowspan="3">诊察所见</td>
					<td rowspan="3"></td>
					<td style="text-align: center;">-</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td rowspan="7">身体测量</td>
					<td rowspan="7"></td>
					<td>身高</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>体重</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>标准体重</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>肥胖度</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>BMI指数</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>腹围(cm)</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>体脂肪率</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td rowspan="2">血压</td>
					<td rowspan="2"></td>
					<td>高压</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>低压</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td rowspan="2">视力</td>
					<td rowspan="2"></td>
					<td>矫正视力（右）</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>矫正视力（左）</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td rowspan="2">听力</td>
					<td rowspan="2"></td>
					<td>矫正听力（右）</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>矫正听力（左）</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
