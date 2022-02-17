
def facts
 #array=[]
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/plant-facts/"))
doc.css("ul.facts-list li").each do |list|
$listitem.push(list.text)
 end
 return $listitem
end
def historyfacts
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/interesting-history-facts/"))
doc.css("ul.facts-list li").each do |list|
$listitem.push(list.text)
 end
 return $listitem

end
def lifefacts
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/random-life-facts-2/"))
doc.css("ol.facts-list li").each do |list|
$listitem.push(list.text)
 end
 return $listitem
end