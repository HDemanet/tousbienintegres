# config/initializers/meta_tags.rb
MetaTags.configure do |config|
  config.title_limit        = 60
  config.description_limit  = 160
  config.keywords_limit     = 255
  config.keywords_separator = ', '
end
