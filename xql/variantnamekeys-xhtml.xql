xquery version "1.0";
declare namespace tei = "http://www.tei-c.org/ns/1.0";

(: List all places together with variant names :)

<html>
    <head>
        <title>List of name variants</title>
    </head>
    <body>
        <h1>Variant Placename Keys</h1>
        <div>
            
            
            {
                let $doc := doc("../texts/turner1965-p5.xml")
                let $everyplace := $doc//tei:placeName
                let $keys := distinct-values($everyplace/@ref)
                
                for $key in $keys
                order by $key
                return
                    <div
                        class="place">
                        <div
                            class="key">
                            <strong>{$key}</strong>
                        </div>
                        <div
                            class="variants">
                            {
                                for $variant in $everyplace
                                where data($variant/@key) = $key
                                return
                                    <span
                                        class="variant">{data($variant)}</span>
                            }
                        </div>
                    </div>
            }
        
        </div>
    </body>
</html>
