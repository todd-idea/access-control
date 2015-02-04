<div class="row">
	<div class="col-md-12">
		<h2>IDEA Online</h2>
	</div>
</div>

<div class="row">
	<div class="col-md-3">
		<div class="panel panel-default">
			<div class="panel-heading"><h3>Platform</h3></div>
			<div class="panel-body">
				<ul>
					<li>App version: <g:meta name="app.version"/></li>
					<li>Grails version: <g:meta name="app.grails.version"/></li>
					<li>Groovy version: ${GroovySystem.getVersion()}</li>
					<li>JVM version: ${System.getProperty('java.version')}</li>
					<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
					<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
					<li>Domains: ${grailsApplication.domainClasses.size()}</li>
					<li>Services: ${grailsApplication.serviceClasses.size()}</li>
					<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="col-md-3">
		<div class="panel panel-default">
			<div class="panel-heading"><h3>Plugins</h3></div>
			<div class="panel-body">
				<ul>
					<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
						<li>${plugin.name} - ${plugin.version}</li>
					</g:each>
				</ul>
			</div>
		</div>
	</div>

	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading"><h3>Controllers</h3></div>
			<div class="panel-body">
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</div>
</div>