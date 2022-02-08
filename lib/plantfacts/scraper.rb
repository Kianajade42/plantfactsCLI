require 'nokogiri'
require 'open-uri'
 require 'uri'

def facts
 array=[]
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/plant-facts/"))
doc.css("ul.facts-list li").each do |list|
array.push(list.text)
 end
 return array

end
def historyfacts
 array=[]
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/interesting-history-facts/"))
doc.css("ul.facts-list li").each do |list|
array.push(list.text)
 end
 return array

end
def lifefacts
 array=[]
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/random-life-facts-2/"))
doc.css("ol.facts-list li").each do |list|
array.push(list.text)
 end
 return array
end