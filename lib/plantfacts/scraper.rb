class Scraper

def self.facts
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/plant-facts/"))
info = doc.css("ul.facts-list li")
info.each do |li|
pf = List.new 
pf.content = li.text
    end
  end

def self.historyfacts
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/interesting-history-facts/"))
info = doc.css("ul.facts-list li")
info.each do |li|
hf = List.new 
hf.content = li.text
    end
  end

def self.lifefacts
doc = Nokogiri::HTML(URI.open("https://www.funfactsabout.net/random-life-facts-2/"))
info = doc.css("ul.facts-list li")
info.each do |li|
lf = List.new 
lf.content = li.text
    end
  end
  
end

