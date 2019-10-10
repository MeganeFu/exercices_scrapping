
require 'nokogiri'
require 'open-uri'

def crypto_monnaies()
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))


symbols = page.xpath'///*[@id]/td[3]'

    
all_symbols = []
    
    symbols.each do |symbols|
   
all_symbols << symbols.text
#print all_symbols

    
    end
   values = page.xpath('//*[@class="price"]')
all_values = []
    
   values.each do |values|
all_values << values.text
#print all_values

       
    end
    
    
  hash = all_symbols.zip(all_values).to_h
    

    print hash
  
    end

crypto_monnaies()
