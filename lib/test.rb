# Here your code !

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'enumerator'

url = 'http://www.annuaire-des-mairies.com/val-d-oise.html'
text = String.new
doc = Nokogiri::HTML.parse(open(url))

# recherche css pour trouver la class "lientxt" dans les blocks <a></a>

liens = doc.css('a.lientxt')

# Array pour stocker les mails obtenus sur chacunes des urls
ret = []

# Url de base sur laquelle on va rajouter les noms des mairies pour obtenir chaque page individuellement
followUrl = 'http://www.annuaire-des-mairies.com/'

# Methode pour obtenir le lien dans la mairie sans le superflu 
# i = i.to_s
# puts i.to_s[i.index('/')..i.rindex('"') - 1]

# RegEx pour la recherche d'une adresse mail 
# "/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i"
j = 0
for i in liens
    i = i.to_s
    j += 1
    doc = Nokogiri::HTML.parse(open(followUrl + i.to_s[i.index('/')..i.rindex('"') - 1]))
    print doc.to_s.match("Email")
    # nodes = doc.xpath selector
    # print nodes
end