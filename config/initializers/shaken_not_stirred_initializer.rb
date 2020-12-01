ShakenNotStirred.configure do |config|
    config.api_key = "abcd1234"
  end

  filter = ShakenNotStirred.new

  filter.by_name("martini")