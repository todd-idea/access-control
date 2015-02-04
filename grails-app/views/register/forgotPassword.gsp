<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="idea"/>
		<title><g:message code='spring.security.ui.forgotPassword.title'/></title>
	</head>

	<body>
		<div class="container">
			<g:if test='${emailSent}'>
				<div class="row">
					<div class="col-md-offset-3 col-md-6 col-md-offset-3">
						<g:message code='spring.security.ui.forgotPassword.sent'/>
					</div>
			</g:if>
			<g:else>
				<form action='forgotPassword' method='POST' id='forgotPasswordForm' name="forgotPasswordForm" class='cssform' autocomplete='off'>
					<div class="row">
						<div class="col-md-offset-3 col-md-6 col-md-offset-3">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title"><g:message code='spring.security.ui.forgotPassword.description'/></h3>
								</div>

		  						<div class="panel-body">
									<label for='username'><g:message code="spring.security.ui.forgotPassword.username"/>:</label>
									<input type='text' class='text_' name='username' id='username'/>
								</div>

								<div class="panel-footer">
									<input type='submit' id="submit" value='${message(code: "spring.security.ui.forgotPassword.submit")}'/>
								</div>
							</div>
						</div>
					</div>
				</form>
			</g:else>
		</div>

		<script>
			$(document).ready(function() {
				$('#username').focus();
			});
		</script>
	</body>
</html>