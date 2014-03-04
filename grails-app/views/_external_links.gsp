
<g:set var="latin1Query" value="${URLEncoder.encode(q, 'latin1')}"/>

<%--
	<li><a href="http://ca.wikipedia.org/w/index.php?search=${q.encodeAsURL()}">Viquipèdia</a>
		<span class="d">&bullet;</span> <a href="http://ca.wiktionary.org/w/index.php?search=${q.encodeAsURL()}">Viccionari</a></li>
--%>

<p style="line-height: 175%">

    <a href="http://dlc.iec.cat/results.asp?txtEntrada=${latin1Query}&OperEntrada=0" title="Cerca al DIEC2">DIEC2</a>

    <span class="d">&middot;</span>
    <a http://ec.grec.net/cgi-bin/AppDLC3.exe?APP=CERCADLC&GECART=${q.encodeAsUrl()}" title="Cerca al diccionari de l'GDLC">GDLC</a>
    <br/>
   
    <a href="http://ca.wiktionary.org/wiki/Especial:Cerca?search=${q.encodeAsURL()}" title="Cerca al Viccionari">Viccionari</a>
    <span class="d">&middot;</span>
    <a href="http://www.google.cat/search?q=${q.encodeAsURL()}&amp;lr=lang_ca" title="Cerca al web">Google</a>
</p>
