<%@page import="com.vionto.vithesaurus.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="about.title" /></title>
        <meta name="description" content="OpenThesaurus és un lloc web interactiu per a elaborar un diccionari català de sinònnims i assocacions."/>
    </head>
    <body>

<!-- NOTE: -->
<!-- THIS CONTENT IS SPECIFIC TO OPENTHESAURUS-CA -->

        <hr/>
        
        <h2>Quant a l'OpenThesaurus</h2>

        <p>L'OpenThesaurus és un diccionari català de sinònims i associacions lliure.
        Podeu cercar paraules per troboar-ne d'altres amb el mateix significat o relacionat. Per exemple, la 
        <a href="../synset/search?q=dolent">cerca de <span class="bsp">dolent</span></a> ofereix, entre altres, els sinònims <span class="bsp">maligne, malvat, incorrecte</span>.</p>

        <p>Qualsevol qui ho desitgi pot col·laborar a l'Openthesaurus, corregir errors o afegir nous conceptes. La funció de cerca mostra tots els sentits assignats a una paraula. Podeu corregir els significats individuals, suprimir les paraules incorrctes o afegir-ne de noves. Teniu tots els detalls a les <a href="faq">PMF</a>.</p>


        <h2>Llicència</h2>

        <p>Les <strong>dades</strong> de l'Openthesaurus es troben disponibles via l'<a href="api">API</a> i <a href="download">baixada</a> sota els termes de la
          <a rel="license" href="http://creativecommons.org/licenses/LGPL/2.1/deed.ca">GNU Lesser General Public License (LGPL)</a>.
          Això simplement vol dir que sou lliure d'utilixar, processar, modificar i redistribuir les dades, sempre que es faci sota 
          els termes de la mateixa llicència i s'indiqui clarament la font de les dades amb un enllaç a http://tesaure.softcatala.org.</p>

        <p>El <strong>codi font del lloc web</strong> es troba disponible al <a href="https://github.com/jmontane/openthesaurus">github de Softcatalà</a>, i es basa en el codi de l'<a href="https://github.com/danielnaber/openthesaurus">Openthesaurus alemany original</a>
          sota els termes de la llicència <a href="http://www.gnu.org/licenses/agpl.html">GNU AGPL</a>.
          Aquest servidor (http://tesaure.softcatala.org) té instal·lada la versió <g:meta name="app.version"/>.
          Les instruccions d'instal·lació són a <a href="https://github.com/jmontane/openthesaurus/blob/master/README">README</a>.
        </p>

    
        <h2>Anàlisi i dades</h2>

        <p><g:link action="imprint">Informació de contacte</g:link></p>


        <h2>Comunitat i notícies de l'Openthesaurus</h2>

        <ul>
            <li><a href="newsletter">Llista de l'OpenThesaurus</a></li>
            <li><a href="newsarchive">Arxiu de notícies</a></li>
        </ul>



        <h2>OpenThesaurus en altres llengües</h2>

        <ul>
            <li><a href="http://www.openthesaurus.de/">Alemany</a></li>
            <li><a href="http://www.tezaver.si/">Eslovè</a></li>
            <li><a href="http://openthes-es.berlios.de">Espanyol</a></li>
            <li><a href="http://www.openthesaurus.gr/">Grec</a></li>
            <li><a href="http://synonimy.sourceforge.net/">Polonès</a></li>
            <li><a href="http://openthesaurus.caixamagica.pt/">Portuguès</a></li>
        </ul>


        <h2>Tecnologia i disseny</h2>
    
        <p>Aquest lloc web està fet amb el <a href="http://www.grails.org">Grails</a> i base de dades MySQL.
            El disseny és de <!--<a href="http://www.sabinesieg.de">-->Sabine Sieg.<!--</a>-->
        </p>


    <g:render template="/ads/about_bottom"/>

    </body>
</html>
