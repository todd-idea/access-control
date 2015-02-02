<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="idea"/>
		<title>${pageTitle} - IDEA Feedback Systems</title>
	</head>

	<body>
		<h1>${pageTitle}</h1>

		<div class="container">
			<g:render template="all" />

			<sec:ifAllGranted roles="ROLE_ADMIN"><g:render template="admin" /></sec:ifAllGranted>
			<sec:ifAllGranted roles="ROLE_STAFF"><g:render template="staff" /></sec:ifAllGranted>
		</div>
	</body>
</html>