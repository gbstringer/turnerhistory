xquery version "1.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

(: List all places together with variant names :)

<html>
  <head> 
    <title>List of name variants</title>
  </head>
  <body>
    <dl>


	{
		let $doc := doc("turner1965-p5.xml")
		let $everyplace := $doc//tei:name[@type='place']
		let $places := distinct-values($everyplace)

		for $place in $places order by $place
			return 
			  <div>
			    <dt>
					  <strong>{normalize-space($place)}</strong>
					</dt>
					{
						for $variant in $everyplace
							where (compare($variant,$place) eq 0)
							return <dd>{data($variant/@key)}</dd>
					}
				
			    </div>
	  }
	
    </dl>
	</body>
</html>
