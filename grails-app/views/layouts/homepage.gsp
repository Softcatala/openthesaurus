<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:message(code:'favicon.name'))}" />
        <g:layoutHead />
        <g:javascript library="application" />				
    </head>
    <body>
    
       	<g:layoutBody />	

        <!--
        <p class="buildInfo">Version:
            ${grailsApplication.getMetadata().get('app.version')}<br />
            Application: ${grailsApplication.getMetadata().get('app.name')}
        </p>
        -->

    </body>	
</html>