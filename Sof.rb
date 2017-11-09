require 'httparty'
require 'nokogiri'
url = "https://miami.craigslist.org/d/software-qa-dba-etc/search/sof"
response = HTTParty.get url

html = response.body
dom = Nokogiri::HTML(html)
links = dom.css("a.hdrlnk")
i = 0
links.each do |link|
  puts i +=1
  puts link.to_str
  puts link.to_html
end
