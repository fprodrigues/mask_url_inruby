require 'uri'

puts "write your url:"
url = gets.chomp

link = url.match(/(?:http|https):\/\/[a-z0-9]+(?:[\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(?:(?::[0-9]{1,5})?\/[^\s]*)?/ix) # Mask http

if link != nil
 link2 = link
else  	link_aux = url.match(/[a-z0-9]+(?:[\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(?:(?::[0-9]{1,5})?\/[^\s]*)?/ix)  # Mask "xxx.xxx.xx"
		link2 = "http://"<< link_aux.to_s
end

link2 = link2.to_s
l_prin= "http://"<< URI(link2).host

puts l_prin



