xquery version "1.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

(: List all placenames mentioned in the document :)

<div type="glossary">
<head>Glossary of Names</head>
<table type="gloss">

{
	let $doc := doc("../texts/turner1965-p5.xml")
	let $names := $doc//(tei:name|tei:persName|tei:placeName)
	
	for $n in $names order by $n/@ref, $n
	return
	       <tr>
	           <td>{$n/@ref}</td>
	           <td>{normalize-space(string-join($n,' # '))}</td>
	           
	       </tr>
}

</table>
</div>
