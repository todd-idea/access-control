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

			<!--
			<form action='${postUrl}' method='POST' id='loginForm' class="form-horizontal" autocomplete='off'>
				<div class="form-group">
					<label for='username' class="col-md-2 control-label"><g:message code="springSecurity.login.username.label"/>:</label>
					<div class="col-md-10">
						<input type='text' class='text_' name='j_username' id='username' class="form-control"/>
					</div>
				</div>

				<div class="form-group">
					<label for='password' class="col-md-2 control-label"><g:message code="springSecurity.login.password.label"/>:</label>
					<div class="col-md-10">
						<input type='password' class='text_' name='j_password' id='password' class="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<label>
							<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
							<g:message code="springSecurity.login.remember.me.label"/>
						</label>
				</div>

				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
						<g:link controller="register" action="forgotPassword">Reset password</g:link>
					</div>
				</div>
			</form>
			-->

			<form action='${postUrl}' method='POST' id='loginForm' class="form-horizontal" autocomplete='off'>
				<div class="row">
					<div class="col-md-offset-3 col-md-6 col-md-offset-3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">Enter your username and password</h3>
							</div>

							<div class="panel-body">
								<div class="form-group">
									<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
									<input type='text' class='text_' name='j_username' id='username' class="form-control"/>
								</div>
								<div class="form-group">
									<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
									<input type='password' class='text_' name='j_password' id='password' class="form-control"/>
								</div>
								<div class="form-group">
									<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
									<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
								</div>
							</div>

							<div class="panel-footer">
								<div class="row">
									<div class="col-md-8">
										<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
									</div>
									<div class="col-md-4">
										<g:link controller="register" action="forgotPassword">Reset password</g:link>
									</div>
								</div>
							</div>
						</div>
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