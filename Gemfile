source "https://rubygems.org"

gem "jekyll", "4.3.2"

group :development do
  gem "jekyll-last-modified-at"
  gem "stringex"
  gem "webrick"

  # TODO: https://github.com/sass/dart-sass-embedded/issues/106
  gem "jekyll-sass-converter", "< 3.0"
end

group :jekyll_plugins do
  gem "match_regex"
end


gem "tzinfo", "2.0.6"
gem "tzinfo-data"

# this solves error from the grunt
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
