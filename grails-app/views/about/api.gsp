<%@page import="com.vionto.vithesaurus.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="api.title" /></title>
        <meta name="description" content="Descripció de com es poden consultar les dades de l'OpenThesaurus través d'una interfície HTTP."/>
    </head>
    <body>

        <hr />

        <h2>Servei web/API de consulta</h2>
        
        <ul>
          <li><a href="#allgemeines">Generals</a></li>
          <li><a href="#xml">Consulta per XML</a></li>
          <li><a href="#json">Consulta per JSON</a></li>
          <li><a href="#probleme">Problemes coneguts</a></li>
          <li><a href="#limits">Sol·licitud de no-limitació</a></li>
        </ul>
        
		<h2><a name="allgemeines">Generalitats</a></h2>
		
		<p>La majoria de dades d'aquest web es poden accedir directament mitjançant una consulta HTTP.</p>
		
		<p><strong>Atenció: si useu l'API de proves, contacteu amb nosaltres mitjançant l'adreça
		<i>jmontane <span>a</span> softcatala.org</i>. Aixó podrem avisar-vos per informar, per exemple, si hi ha un canvi en el format de sortida.</strong></p>
		
		<h2><a name="xml">Consulta per XML</a></h2>
		
		<p>La petició HTTP següent, tipus GET, promorciona tots les conjunts de sinònims amb el terme <span class="bsp">prova</span>:</p>
		
		<pre class="api"><a href="${createLinkTo(dir:'synonyme')}/search?q=prova&amp;format=text/xml">${grailsApplication.config.thesaurus.serverURL}${createLinkTo(dir:'synonyme')}/search?q=<strong>prova</strong>&amp;format=text/xml</a></pre>
	
		<h3>Resultat</h3>
		
		<p>El resultat de la consulta és un fitxer XML amb el format següent:</p>

        <%-- Use geshi (like on languagetool.org/development/ for highlighting: --%>
<pre class="api"><span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;matches<span style="font-weight: bold; color: black;">&gt;</span></span></span>
&nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;metaData<span style="font-weight: bold; color: black;">&gt;</span></span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;apiVersion</span> <span style="color: #000066;">content</span>=<span style="color: #bb0000;">&quot;0.1.3&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;warning</span> <span style="color: #000066;">content</span>=<span style="color: #bb0000;">&quot;WARNING -- this XML format may be extended without warning&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;copyright</span> <span style="color: #000066;">content</span>=<span style="color: #bb0000;">&quot;Copyright (C) 2011 Daniel Naber (www.danielnaber.de)&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;license</span> <span style="color: #000066;">content</span>=<span style="color: #bb0000;">&quot;GNU LESSER GENERAL PUBLIC LICENSE Version 2.1&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: b	lack;">&lt;source</span> <span style="color: #000066;">content</span>=<span style="color: #bb0000;">&quot;http://www.openthesaurus.de&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;date</span> <span style="color: #000066;">content</span>=<span style="color: #bb0000;">&quot;Sat Mar 06 22:47:25 CET 2011&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;/metaData<span style="font-weight: bold; color: black;">&gt;</span></span></span>
&nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;synset</span> <span style="color: #000066;">id</span>=<span style="color: #bb0000;">&quot;1234&quot;</span><span style="font-weight: bold; color: black;">&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;categories<span style="font-weight: bold; color: black;">&gt;</span></span></span>
&nbsp; &nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;category</span> <span style="color: #000066;">name</span>=<span style="color: #bb0000;">&quot;Name der Kategorie&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;/categories<span style="font-weight: bold; color: black;">&gt;</span></span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;term</span> <span style="color: #000066;">term</span>=<span style="color: #bb0000;">&quot;Bedeutung 1, Wort 1&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;term</span> <span style="color: #000066;">term</span>=<span style="color: #bb0000;">&quot;Bedeutung 1, Wort 2&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;/synset<span style="font-weight: bold; color: black;">&gt;</span></span></span>
&nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;synset</span> <span style="color: #000066;">id</span>=<span style="color: #bb0000;">&quot;2345&quot;</span><span style="font-weight: bold; color: black;">&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;categories</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; &nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;term</span> <span style="color: #000066;">term</span>=<span style="color: #bb0000;">&quot;Bedeutung 2, Wort 1&quot;</span><span style="font-weight: bold; color: black;">/&gt;</span></span>
&nbsp; <span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;/synset<span style="font-weight: bold; color: black;">&gt;</span></span></span>
<span style="color: #009900;"><span style="font-weight: bold; color: black;">&lt;/matches<span style="font-weight: bold; color: black;">&gt;</span></span></span></pre>


        <h2><a name="json">Consulta per JSON</a></h2>
        
        <p>En comptes de <span class="apioption">text/xml</span> podeu usar <span class="apioption">application/json</span>
        , per a obtenir el resultat en format JSON.</p>
        
        <pre class="api"><a href="${createLinkTo(dir:'synonyme')}/search?q=test&amp;format=application/json">${grailsApplication.config.thesaurus.serverURL}${createLinkTo(dir:'synonyme')}/search?q=<strong>prova</strong>&amp;format=application/json</a></pre>

        <g:render template="jsonWarning"/>
        

        <h2><a name="probleme">Problemes coneguts</a></h2>

        <p>S'ignoren sempre els diacrítics, per tant cercant <span class="bsp">caça</span>
            s'obté també l'entrada al terme <span class="bsp">caca</span>.</p>

        <h2><a name="limits">Sol·licitud de no-limitació</a></h2>

        <p>Si feu més de 60 peticions per minut des de la mateixa IP, obtindreu un missatge d'error (HTTP-codi 500).
        Si voleu fer més consultes, <g:link action="imprint">contacteu amb nosaltres</g:link> i sol·liciteu un augment del límit. Alternativament a la consulta directa, podeu <g:link action="download">baixar</g:link> per evitar consultes massives.</p>

    </body>
</html>
