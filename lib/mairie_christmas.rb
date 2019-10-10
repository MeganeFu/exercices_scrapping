
require 'nokogiri'
require 'open-uri'

def mairie_Avernes()
    
   page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
    
    mairie_avernes = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    
    mairie = []
    mairie_avernes.each do |mairie_avernes|
    end
mairie << mairie_avernes.text
    
    print mairie
    end    
mairie_Avernes
    

    
def mairies_url()
    
    page = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html")) 
    
mairie_val_oise_url = page.xpath('/html/body/table/tr[3]/td/table/tr/td[2]/table/tr/td')
    
urls = []
        mairie_val_oise_url.css('a').each do |mairie_val_oise_url_link|
    #print mairie_val_oise_url_link['href']
        end
    
    
end
mairies_url()


def mairies_emails()
    
    
  url = 'http://www.annuaire-des-mairies.com/val-d-oise.html'
text = String.new
page = Nokogiri::HTML.parse(open(url))


liens = page.css('a.lientxt')

emails = []

followUrl = 'http://www.annuaire-des-mairies.com/'

j = 0
for i in liens
    i = i.to_s
    j += 1
    page = Nokogiri::HTML.parse(open(followUrl + i.to_s[i.index('/')..i.rindex('"') - 1]))
    print page.to_s.match("Adresse Email")
    nodes = page.xpath.select
 print emails
end
end   
    mairies_emails()
