<%@page import="com.vionto.vithesaurus.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="about.title" /></title>
        <meta name="description" content="OpenThesaurus ist eine interaktive Website zur Entwicklung eines deutschsprachigen Wörterbuchs für Synonyme."/>
    </head>
    <body>

<!-- NOTE: -->
<!-- THIS CONTENT IS SPECIFIC TO WWW.OPENTHESAURUS.DE -->

        <hr/>
        
        <h2>Sobre l'OpenThesaurus</h2>

        <p>OpenThesaurus ist ein deutschsprachiges Wörterbuch für Synonyme und Assoziationen.
        Man kann damit Wörter mit gleicher oder ähnlicher Bedeutung nachschlagen. Zum Beispiel liefert
        die <a href="../synset/search?q=falsch">Suche nach <span class="bsp">falsch</span></a> unter anderem <span class="bsp">inkorrekt, unrichtig,
        verkehrt</span> als Synonyme.</p>

        <p>Jeder kann bei OpenThesaurus mitmachen und Fehler korrigieren
        oder neue Synonyme einfügen. Die Suchfunktion zeigt alle Bedeutungen,
        in denen ein Wort vorkommt (z.B. <span class="bsp">roh</span> -&gt; <span class="bsp">roh, ungekocht</span>
        und einen anderen Eintrag für <span class="bsp">roh, rau, grob, unsanft</span>). Bei
        den einzelnen Bedeutungen  lassen sich dann unpassende Wörter löschen
        und neue hinzufügen. Details dazu finden sich in der <a href="faq">FAQ</a>.</p>


        <h2>Lizenz</h2>

        <p>Die <strong>Daten</strong> von OpenThesaurus stehen via <a href="api">API</a> und <a href="download">Download</a> unter der
          <a rel="license" href="http://creativecommons.org/licenses/LGPL/2.1/deed.de">GNU Lesser General Public License (LGPL)</a> zur Verfügung.
          Das bedeutet einfach gesagt, dass die Daten kostenlos genutzt, verarbeitet, geändert und weiterverbreitet werden
          können, solange die weiterverbreiteten Daten ebenfalls für den User deutlich erkennbar unter der LGPL stehen
          und openthesaurus.de mit Link als die Quelle angegeben wird.</p>

        <p>Der <strong>Sourcecode der Website</strong> befindet sich <a href="https://github.com/danielnaber/openthesaurus">bei github</a>,
          er steht unter der <a href="http://www.gnu.org/licenses/agpl.html">GNU AGPL</a>.
          Auf diesem Server (www.openthesaurus.de) läuft Version <g:meta name="app.version"/>.
          Die Installation ist in einem <a href="https://github.com/danielnaber/openthesaurus/blob/master/README">README</a>
          und <a href="http://www.openthesaurus.de/jforum/posts/list/71.page">im Forum</a> beschrieben.
        </p>

    
        <h2>Analysedienste &amp; Datenschutz</h2>

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
