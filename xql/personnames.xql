xquery version "1.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

(: List all placenames mentioned in the document :)

<div type="glossary">
<head>Glossary of Names</head>
<list type="gloss">

{
	let $doc := doc("turner1965-p5.xml")
	
	for $n in $doc//tei:name[@type='person'] order by $n/@key
	return 
		 <label xml:id="{data($n/@key)}">{normalize-space($n)}</label>	
}

</list>
</div>
