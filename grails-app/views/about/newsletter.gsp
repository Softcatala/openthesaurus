<%@page import="java.text.*" %>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="preventSearchFocus" value="true" scope="request" />
        <title><g:message code="newsletter.title"/></title>
    </head>
    <body>

        <!-- NOTE: -->
        <!-- THIS CONTENT IS SPECIFIC TO OPENTHESAURUS-CA-->

        <hr />
    
        <div class="dialog">

            <h2><g:message code="newsletter.headline"/></h2>

            <p>La llista serveix com a eina de coordinació dels col·laboradors de l'OpenThesaurus. El trànsit és reduït.</p>

            <form method="post" action="http://llistes.softcatala.org/mailman/subscribe/sinonims">
                <table>
                    <tbody>
                        <tr>
                            <td><g:message code="user.login.form.username"/></td>
                            <td><input autofocus placeholder="${message(code:'user.register.email.placeholder')}" type="text" name="email" size="30"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input class="submitButton" type="submit" value="Subscriu-me a la llista"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>Visiteu l'<a href="http://llistes.softcatala.org/pipermail/sinonims/">arxiu de missatges</a>,
                                o consulteu la <a href="http://llistes.softcatala.org/mailman/listinfo/sinonims">informació de la llista</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            
        </div>

    </body>
</html>
