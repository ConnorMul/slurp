# require 'rubygems'
# require 'httparty'

# class CocktailApi
#     include HTTParty
#     base_uri "www.thecocktaildb.com"
#     key_value = ENV['1a53f7da9bmsh55c76e76c5b5770p187d7fjsn910a9b05df55']

#     def self.search(value)
#         get("api/json/v1/1a53f7da9bmsh55c76e76c5b5770p187d7fjsn910a9b05df55/search.php?s=#{value}")
#     end

# end

# CocktailApi.search('vodka')