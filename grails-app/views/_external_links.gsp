
<g:set var="latin1Query" value="${URLEncoder.encode(q, 'latin1')}"/>

<%--
	<li><a href="http://ca.wikipedia.org/w/index.php?search=${q.encodeAsURL()}">Viquipèdia</a>
		<span class="d">&bullet;</span> <a href="http://ca.wiktionary.org/w/index.php?search=${q.encodeAsURL()}">Viccionari</a></li>
--%>

<p style="line-height: 175%">

    <a href="http://dlc.iec.cat/results.asp?txtEntrada=${latin1Query}&OperEntrada=0" title="DIEC2">DIEC2</a>

    <span class="d">&middot;</span>
    <a href="http://www.canoo.net/services/Controller?input=${latin1Query}&amp;service=inflection">Wortformen von Canoo.net</a>

    <br/>
    <a href="http://dict.tu-chemnitz.de/dings.cgi?lang=de&amp;noframes=1&amp;service=&amp;query=${latin1Query}&amp;optword=1&amp;optcase=1&amp;opterrors=0&amp;optpro=0&amp;style=&amp;dlink=self"
     >Beolingus Deutsch-Englisch</a>

    <%--
    <span class="d">&middot;</span>
    <a href="http://www.dict.cc/?s=${q.encodeAsURL()}" title="Englisch-Deutsch">dict.cc</a>
    --%>

    <%--
    <span class="d">&middot;</span>
    <a href="http://www.google.cat/search?q=${q.encodeAsURL()}&amp;lr=lang_ca" title="Cerca al web">Google</a>
    --%>

</p>
