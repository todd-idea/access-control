<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="IDEA"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-114x114.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>

	<body>
		<nav class="navbar navbar-inverse navbar-static-top">
	      <div class="container">
	        <div class="navbar-header">
	          	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            	<span class="sr-only">Toggle navigation</span>
	            	<span class="icon-bar"></span>
	            	<span class="icon-bar"></span>
	            	<span class="icon-bar"></span>
	          	</button>
	          	<g:link class="navbar-brand" uri="/">
	          		<img alt="IDEA Feedback Systems" src="${assetPath(src: 'i_icon_30px.png')}">
	          	</g:link>
	        </div>

	        <div id="navbar" class="navbar-collapse collapse">
	        	<ul class="nav navbar-nav navbar-left">
	        		<li class="dropdown">
	        			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-send" title="Requests"></i></a>
	        			<ul class="dropdown-menu">
	        				<li><a href="#">Surveys</a></li>
	        				<li><a href="#">Reports</a></li>
	        			</ul>
	        		</li>
	        		<li class="dropdown">
	        			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-file" title="Samples"></i></a>
	        			<ul class="dropdown-menu">
	        				<li><a href="#">Surveys</a></li>
	        				<li><a href="#">Reports</a></li>
	        			</ul>
	        		</li>
	          	</ul>

	        	<sec:ifNotLoggedIn>
					<form method="POST" action="${resource(file: 'j_spring_security_check')}" class="navbar-form navbar-right">
		            	<div class="form-group">
		              		<input type="text" placeholder="Username" class="form-control" name="j_username">
		            	</div>
		            	<div class="form-group">
		              		<input type="password" placeholder="Password" class="form-control" name="j_password" type="password">
		            	</div>
		            	<button type="submit" class="btn btn-link"><i class="glyphicon glyphicon-log-in"></i></button>
					</form>
		        </sec:ifNotLoggedIn>

		        <sec:ifLoggedIn>
		        	<ul class="nav navbar-nav navbar-right">
		        		<li><a href="#"><i class="glyphicon glyphicon-inbox" title="Client Request"></i></a></li>
		        		<li><a href="#"><i class="glyphicon glyphicon-user" title="Users"></i></a></li>
		        		<li><a href="#"><i class="glyphicon glyphicon-book" title="Reports"></i></a></li>
		        		<li><a href="#"><i class="glyphicon glyphicon-tags" title="Survey Groups"></i></a></li>
		        		<li><a href="#"><i class="glyphicon glyphicon-list-alt" title="Surveys"></i></a></li>
		        		<li><a href="#"><i class="glyphicon glyphicon-briefcase" title="Applications"></i></a></li>
		        		<li><a href="#"><i class="glyphicon glyphicon-tower" title="Institutions"></i></a></li>
		        		<li class="dropdown">
		        			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog" title="System Admin Tools"></i></a>
		        			<ul class="dropdown-menu">
		        				<li><a href="#">Grails Admin</a></li>
		        				<li><a href="#">Grails Console</a></li>
		        				<li><a href="#">Quartz</a></li>
		        				<li><a href="#">DB Console</a></li>
		        			</ul>
		        		</li>
		        		<li><a href="#"><i class="glyphicon glyphicon-wrench"></i></a></li>
		        		<li>
				          	<g:form method="POST" controller="logout" class="navbar-form navbar-right">
				            	<button type="submit" class="btn btn-link" title="Log out"><i class="glyphicon glyphicon-log-out"></i></button>
				          	</g:form>
		          		</li>
		          	</ul>
		    	</sec:ifLoggedIn>
	        </div><!--/.navbar-collapse -->
	      </div>
	    </nav>

		<g:layoutBody/>
	</body>
</html>
