require 'nokogiri'
require 'open-uri'
def facts
 array=[]

doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/plant-facts/"))
doc.css("ul.facts-list li").each do |list|
array.push(list.text)
 end
 return array
end