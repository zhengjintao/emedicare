<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title></title>
<link rel="shortcut icon" type="image/png" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="dist/semantic.min.css">

<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="dist/components/form.min.js"></script>
<script src="dist/components/transition.min.js"></script>
<script src="dist/semantic.min.js"></script>

<style type="text/css">
body {
	background-color: #FCFCFC;
}

body>.grid {
	height: 100%;
}

.image {
	margin-top: -100px;
}

.column {
	max-width: 450px;
}
</style>
</head>
<body>
	<div class="ui middle aligned center aligned grid container">
		<div class="column">
			<div class="ui large center aligned ">

				<div class="ui error message">登录权限待审核中</div>
				<div class="ui message">
					<a href="login.do?from=1">刷新</a>
				</div>
			</div>
		</div>
	</div>

</body>

</html>