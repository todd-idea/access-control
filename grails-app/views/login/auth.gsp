<html>
	<head>
		<meta name='layout' content='idea'/>
		<title>Login - IDEA Feedback Systems</title>
	</head>

	<body>
		<div class="container">
			<div class='row'>
				<div class="col-md-12">
					<h1>Login</h1>
				</div>
			</div>

			<g:if test='${flash.message}'>
				<div class="row">
					<div class="alert alert-danger">${flash.message}</div>
				</div>
				<div class="row">
					<div class="alert alert-info">
						Survey respondents do not need to login.
					</div>
				</div>
			</g:if>

			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
				<div class="row">
					<div class="col-md-12">
						<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
						<input type='text' class='text_' name='j_username' id='username'/>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
						<input type='password' class='text_' name='j_password' id='password'/>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
						<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
					</div>
				</div>
			</form>
		</div>

		<script type='text/javascript'>
			<!--
			(function() {
				document.forms['loginForm'].elements['j_username'].focus();
			})();
			// -->
		</script>
	</body>
</html>