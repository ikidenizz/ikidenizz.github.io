# Gemfile
source "https://rubygems.org"

# Jekyll sürümünü yönetmek için burası kullanılır.
# Farklı bir sürüm kullanmak isterseniz, aşağıdaki satırı değiştirin,
# dosyayı kaydedin ve `bundle install` komutunu çalıştırın. Jekyll'i çalıştırmak için:
#
#     bundle exec jekyll serve
#
# Bu, doğru Jekyll sürümünün çalıştığından emin olmanıza yardımcı olacaktır.
gem "jekyll", "~> 4.3.4"

# Varsayılan tema. İstediğiniz herhangi bir tema ile değiştirebilirsiniz.
gem "minima", "~> 2.5"

# GitHub Pages kullanmak istiyorsanız, aşağıdaki satırı açabilirsiniz.
# Ancak, bu durumda `gem "jekyll"` satırını yorum satırı yapmalısınız.
# `bundle update github-pages` komutu ile güncelleme yapabilirsiniz.
# gem "github-pages", group: :jekyll_plugins

# Jekyll eklentileri için gruplandırma
group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.12'
  gem 'jekyll-sitemap' # Sitemap oluşturmak için gerekli gem
  # Diğer eklentiler buraya eklenebilir
end

# Windows ve JRuby'de zoneinfo dosyaları bulunmadığından, bu platformlarda
# `tzinfo-data` gem'ini yükleyin.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performans artışı için Windows'ta dizinleri izlemek üzere `wdm` gem'ini yükleyin.
gem "wdm", "~> 0.1", platforms: [:mingw, :x64_mingw, :mswin]

# JRuby için `http_parser.rb` gem'ini `v0.6.x` sürümüne kilitleyin,
# çünkü yeni sürümler Java karşılığına sahip değildir.
gem "http_parser.rb", "~> 0.6.0", platforms: [:jruby]

# Standart Ruby kütüphaneleri (logger, csv, base64, ostruct, erb)
# Bu kütüphaneler genellikle Ruby'nin varsayılan olarak dahil ettiği kütüphanelerdir.
# Ekstra olarak eklemenize gerek yoktur ancak eklerseniz hiçbir zarar vermez.
gem 'logger'
gem 'csv'
gem 'base64'
gem 'ostruct'
gem 'erb'
