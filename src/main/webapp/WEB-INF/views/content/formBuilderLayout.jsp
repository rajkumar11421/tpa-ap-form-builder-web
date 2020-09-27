<html>

<link href="formBuilder.css" rel="stylesheet" type="text/css"></link>
<link href="divTable.css" rel="stylesheet" type="text/css"></link>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<header>

</header>
<body>
<div style="width: 70%; margin: 0 auto;">
<div class="form-builder-controller" style="float: left;">
	<jsp:include page="formBuilderController.jsp"/>
</div>

<div class="form-builder-wrapper" style="float: left; width: 70%">
	<jsp:include page="formBuilder.jsp"/>
</div>

</div>
</body>
</html>