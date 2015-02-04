<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="idea"/>
		<title><g:message code='spring.security.ui.resetPassword.title'/></title>
	</head>

	<body>
		<div class="container">
			<form action='resetPassword' method='POST' id='resetPasswordForm' name="resetPasswordForm" class='cssform' autocomplete='off'>
				<g:hiddenField name='t' value='${token}'/>
				<div class="row">
					<div class="col-md-offset-3 col-md-6 col-md-offset-3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title"><g:message code='spring.security.ui.resetPassword.description'/></h3>
							</div>

	  						<div class="panel-body">
	  							<table class="table table-condensed">
									<s2ui:passwordFieldRow name='password' labelCode='resetPasswordCommand.password.label' bean="${command}" labelCodeDefault='Password' value="${command?.password}"/>
									<s2ui:passwordFieldRow name='password2' labelCode='resetPasswordCommand.password2.label' bean="${command}" labelCodeDefault='Confirm Password' value="${command?.password2}"/>
								</table>
							</div>

							<div class="panel-footer">
								<input type='submit' id="submit" value='${message(code: "spring.security.ui.resetPassword.submit")}'/>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>

		<script>
			$(document).ready(function() {
				$('#password').focus();
			});
		</script>
	</body>
</html>