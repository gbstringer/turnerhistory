xquery version "1.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

(: List all placenames mentioned in the document :)

<div type="glossary">
<head>Glossary of Names</head>
<list type="gloss">

{
	let $doc := doc("../texts/turner1965-p5.xml")
	
	for $name in distinct-values($doc//tei:name) order by $name
	return 
	<label xml:id="pl-{lower-case(translate(normalize-space($name),' ','-'))}">{normalize-space($name)}</label>
	
}

</list>
</div>
