xquery version "1.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

(: List all placenames mentioned in the document :)

<div type="glossary">
<head>Glossary of Place Names</head>
<list type="gloss">

{
	let $doc := doc("turner1965-p5.xml")
	
	for $place in distinct-values($doc//tei:name[@type='place']) order by $place
	return 
	<label xml:id="pl-{lower-case(translate(normalize-space($place),' ','-'))}">{normalize-space($place)}</label>
	
}

</list>
</div>
