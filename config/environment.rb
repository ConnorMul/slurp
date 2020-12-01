# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# def request_api(url)
#     response = Excon.get(
#       url,
#       headers: {
#         'X-RapidAPI-Host' => URI.parse(url).host,
#         'X-RapidAPI-Key' => ENV.fetch('1')
#       }
#     )
#     return nil if response.status != 200
#     JSON.parse(response.body)
#   end
#   def find_cocktail(name)
#     request_api(
#       "www.thecocktaildb.com/api/json/v1/1/search.php?s=#{name}"
#     )
#   end