# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://the-cocktail-db.p.rapidapi.com/search.php")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = '1a53f7da9bmsh55c76e76c5b5770p187d7fjsn910a9b05df55'
request["x-rapidapi-host"] = 'the-cocktail-db.p.rapidapi.com'

response = http.request(request)
puts response.read_body