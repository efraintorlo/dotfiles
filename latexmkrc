#latexmk -e "\$hash_calc_ignore_pattern{'pdf'} = '^/(CreationDate|ModDate|ID) '"
#latexmk -e "\$hash_calc_ignore_pattern{'pdf'} = '^/(CreationDate|ModDate|ID) ';" -pdf -pdflatex="pdflatex --shell-escape  %O  %S" inflation
#latexmk -e "\$hash_calc_ignore_pattern{'pdf'} = '^/CreationDate |^/ModDate |^/ID \\[<';"
#$hash_calc_ignore_pattern{'pdf'} = '^/CreationDate |^/ModDate |^/ID \\[<';
$hash_calc_ignore_pattern{'pdf'} =  '^/CreationDate |^/ModDate |^/ID |^<rdf:RDF |^<rdf:Description rdf:about |^<xmp:CreateDate\\[<';
#$hash_calc_ignore_pattern{'pdf'} = 
#   '^/CreationDate\('
#   .'|^/ModDate\('
#   .'|^/ID \['
#   .'|^<rdf:RDF '
#   .'|^<rdf:Description rdf:about'
#   .'|^<xmp:CreateDate>';


