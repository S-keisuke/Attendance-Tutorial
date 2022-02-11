source 'https://rubygems.org'

gem 'rails',        '~> 5.1.6'
gem 'rails-i18n' #追加機能No3関連 日本語化するgem
gem 'bcrypt'
gem 'faker' # 追加機能No2関連 サンプルユーザーを日本人風に生成する
gem 'bootstrap-sass'
gem 'will_paginate' # 複数表示をページ分けできる
gem 'bootstrap-will_paginate' # 複数表示をページ分けできる（bootstrapでの編集可）
gem 'rounding' #追加機能No9関連　所望の時刻で表示時刻を丸めるgem
gem 'puma',         '~> 4.3'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks',   '~> 5'
gem 'jbuilder',     '~> 2.5'

group :development, :test do
  gem 'sqlite3', '~> 1.3.3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do #heroku連携時に追加した
  gem 'pg', '0.20.0'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
# Mac環境でもこのままでOKです
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]