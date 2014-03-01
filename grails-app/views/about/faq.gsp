<%@page import="com.vionto.vithesaurus.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="faq.title" /></title>
    </head>
    <body>

        <hr />

		<h2><g:message code="faq.title" /></h2>

        <%--
        <table style="border:0px;width:100%">
        <tr>
        	<td>
        		<ul>
        			<li><a href="#was">Què és un sinònim?</a></li>
        			<li><a href="#textverarbeitungen">Què he tenir en compte en editar a l'OpenThesaurus?</a></li>
        			<li><a href="#aenderungen">Quins processadors de text incorporen el diccionari de sinònims?</a></li>
        			<li><a href="#english">Estic cercant un diccionari de sinònims en anglès.</a></li>
        		</ul>
        	</td>
        	<td>
		        <g:render template="/ads/faq_right"/>
        	</td>
        </tr>
        </table>
        --%>
        
		<div class="faqitem">
			<div class="question">
				<a name="was">Què és un sinònim?</a>
			</div>
			<div class="answer">
				<p>Si dues o més paraules, en un context determinat, tenen el mateix significat, diem que són sinònims. Per exemple:</p>
					
					<ul>
						<li><span class="bsp">Adresse</span>, <span class="bsp">Anschrift</span></li>
				
						<li><span class="bsp">gelingen</span>, <span class="bsp">glücken</span>, <span class="bsp">klappen</span></li>
						<li><span class="bsp">oft</span>, <span class="bsp">häufig</span></li>
					</ul>
					
					<p>Ob Wörter Synonyme sind, lässt sich einfach durch einen
					ausgedachten Satz wie <span class="bsp">Ich gehe <em>oft</em> ins Kino</span> überprüfen.
					Hier lässt sich <span class="bsp">oft</span> durch <span class="bsp">häufig</span> ersetzen, ohne dass
					der Satz dadurch eine andere Bedeutung bekommt. Also sind
					<span class="bsp">oft</span> und <span class="bsp">häufig</span> Synonyme.</p>
				
					
					<p>Folgende Wortpaare sind dagegen <em>keine</em> Synonyme:</p>
					
					<ul>
						<li><span class="bsp">warm</span>, <span class="bsp">heiß</span> (die Bedeutung unterscheidet sich zu sehr)</li>
						<li><span class="bsp">Haus</span>, <span class="bsp">Gebäude</span> (Haus ist ein Unterbegriff von Gebäude, kein Synonym)</li>
				
					</ul>
					
					<p>Die Synonyme einer Bedeutung bilden eine <em>Synonymgruppe</em>.
					Ein Wort mit verschiedenen Bedeutungen  -- wie z.B. <span class="bsp">Bank</span> --
					taucht in so vielen Synonymgruppen auf, wie es verschiedene Bedeutungen
					hat, z.B.:</p>
					
					<p>Synonymgruppe 1: <span class="bsp">Bank, Kreditinstitut</span><br />
					Synonymgruppe 2: <span class="bsp">Bank, Sitzbank</span></p>				
			</div>
		</div>

		<div class="faqitem">
      <img src="${createLinkTo(dir:'images',file:message(code:'hr_light.png'))}" style="width:100%;height:2px;margin-top:20px;" alt="Trennlinie"/>
			<div class="question">
				<a name="textverarbeitungen">Quins processadors de text incorporen el diccionari de sinònims?</a>
			</div>
			<div class="answer">
			Els termes d'aquest diccionari de sinònims ja es distribueixen amb el
                <a href="http://ca.documentfoundation.org/">LibreOffice</a>. Estem treballant en fer-ho també per a l'<a href="http://www.openoffice.org">Apache OpenOffice</a>
			</div>
		</div>

		<div class="faqitem">
      <img src="${createLinkTo(dir:'images',file:message(code:'hr_light.png'))}" style="width:100%;height:2px;margin-top:20px;" alt="Trennlinie"/>
			<div class="question">
				<a name="aenderungen">Què he tenir en compte en editar a l'OpenThesaurus?</a>
			</div>
			<div class="answer">
				<ul>
					<li><emph>Molt important</emph>: no introduïu entrades d'altres diccionaris de forma sistemàtica.</li>
					<li>Feu servir ortografia estàndard. Si hi alguna variant ortogràfica introduïu tots els termes. Per exemple: <span class="bsp">anglès</span>, <span class="bsp">anglés</span>.</li>
					<li>No feu servir termes excessivament estranys o sinònims d'àmbit privat</li>
					<li>Afegiu només formes bàsiques, sense flexionar.
						Per exemple:<br />
						correcte: <span class="bsp">cantar</span>, però no afegiu: <span class="bsp">cantava</span>, <span class="bsp">cantaria</span>...<br />
						correcte: <span class="bsp">casa</span>, però no afegiu: <span class="bsp">cases</span>
					</li>
					<li>Les paraules obsoletes, marqueu-les conseqüentment. És a dir, escriviu
						<span class="bsp">(en desús)</span> darrere el terme.</li>
					<li>Marqueu els geosinònims amb l'etiqueta <span class="bsp">(regional)</span>.
						També podeu ser més específics i marcar, per exemple, els termes valencians amb l'etiqueta <span class="bsp">(val.)</span>,
						i el rossellonessos amb l'etiqueta <span class="bsp">(ross.)</span> kennzeichnen.</li>
					<li>La part entre parèntesis d'una entrada s'ignora en la cerca.</li>
					<li>Més informació al <a href="https://github.com/danielnaber/openthesaurus/wiki/Richtlinien-f%C3%BCr-Eintr%C3%A4ge-in-OpenThesaurus">wiki del projecte a Softcatalà</a></li>
				</ul>
			</div>
		</div>

		<!-- 
		<div class="faqitem">
			<div class="question">
			Wie funktioniert die Sache mit den Ober- und Unterbegriffen?
			</div>
			<div class="answer">
			</div>
		</div>
		 -->

		<div class="faqitem">
      <img src="${createLinkTo(dir:'images',file:message(code:'hr_light.png'))}" style="width:100%;height:2px;margin-top:20px;" alt="Trennlinie"/>
			<div class="question">
				<a name="english">Estic cercant un diccionari de sinònims en anglès.</a>
			</div>
			<div class="answer">
			<p>Podeu visitar els webs 
			<a href="http://wordnetweb.princeton.edu/perl/webwn">WordNet</a> o
			<a href="http://www.thesaurus.com/">thesaurus.com</a>.</p>
			</div>
		</div>

		<%--
		<div class="faqitem">
			<div class="question">
			</div>
			<div class="answer">
			</div>
		</div>
		 --%>
		 
	<g:render template="/ads/faq_bottom"/>

    </body>
</html>
