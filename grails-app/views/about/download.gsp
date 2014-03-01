<%@page import="java.text.*" %>
<%@page import="com.vionto.vithesaurus.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="download.title" /></title>
        <meta name="description" content="Download der freien OpenThesaurus-Daten in verschiedenen Formaten, u.a. Text und für OpenOffice.org/LibreOffice."/>
    </head>
    <body>

<!-- NOTE: -->
<!-- THIS CONTENT IS SPECIFIC TO CATALAN OPENTHESAURUS -->

    <hr />
    
        <h2>Baixada de les dades</h2>

        <a href="http://creativecommons.org/licenses/LGPL/2.1/deed.ca"><img align="right" style="margin-left: 15px" src="http://creativecommons.org/images/public/cc-LGPL-a.png" alt="GNU LGPL Logo"/></a>
        <p>Podeu baixar les paraules de l'OpenThesaurus en diferents formats. Les dades es troben disponibles sota els termes de la 
        <a href="http://creativecommons.org/licenses/LGPL/2.1/deed.ca">GNU Lesser
        General Public License</a>.
        <!-- text from about/index: -->
        Això vol dir, de forma resumida, que podeu sou lliure de procesar, reutilitzar, canviar i distribuir les dades disponibles, sempre que ho feu sota la mateixa llicència i indiqueu clarament aquest web com a font original.
        </p>

        <g:set var="sdf" value="${new SimpleDateFormat('yyyy-MM-dd HH:mm')}"/>

        <ul>
            <li>El diccionari de sinònims ja es distribueix amb el LibreOffice. Si voleu usar una versió més actualitzada la podeu baixar aquí: 
                <ul style="margin-top:0">
                  <li><a href="../export/${oooDump.getName()}">Diccionari de sinònims català per al LibreOffice i l'Apache OpenOffice,
                    ${sdf.format(new Date(oooDump.lastModified()))},
                    ${String.format("%.2f", oooDump.length()/1000/1000)}MB</a></li>
                  
                </ul>
            </li>

            <li><a href="../export/${textDump.getName()}">Diccionari de sinònims en format text, gzip,
                ${sdf.format(new Date(textDump.lastModified()))},
                ${String.format("%.2f", textDump.length()/1000/1000)}MB</a></li>

            <li>Per als desenvolupadors:
                <a href="../export/${dbDump.getName()}">Dump MySQL,
                    ${sdf.format(new Date(dbDump.lastModified()))},
                    ${String.format("%.2f", dbDump.length()/1000/1000)}MB</a><br/>
            </li>

            <li>Llegiu també: <a href="api">API de consulta</a></li>

            <!--
            <li style="margin-top:15px"><a href="../old/thes_de_DE_v2.zip">Deutscher Thesaurus for OpenOffice.org 2.x, 2009-08-02</a> (wird nicht mehr aktualisiert)</li>
            <li><a href="../old/kword_thesaurus.txt.gz">Thesaurus für KWord, 2009-08-02</a> (wird nicht mehr aktualisiert)</li>
            -->

        </ul>


        <h2>Baixada del programari</h2>

        <p>El codi font d'aquest lloc web, basat en <a href="http://www.grails.org">Grails</a>, es pot baixar del
          <a href="https://github.com/jmontane/openthesaurus">github de Softcatalà</a> i es basa en l'Openthesaurus.de:</p>

          <pre style="margin-bottom: 10px" class="api">git clone https://github.com/jmontane/openthesaurus</pre>

          <p>El codi font del projecte original Openthesaurus.de alemany es troba sota els termes de l'<a href="http://www.gnu.org/licenses/agpl.html">Affero General Public License (AGPL)</a>.
          Les instruccions de la instal·lació es troben al fitxer <a href="https://github.com/danielnaber/openthesaurus/blob/master/README">README</a>
          i al <a href="http://www.openthesaurus.de/jforum/posts/list/71.page">fòrum </a>.</p>
    </body>
</html>
