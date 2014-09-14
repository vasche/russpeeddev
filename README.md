# Russpeeddev

Генерирует куски кода для быстрого старта разработки нового приложения (russian edition).

<<<<<<< HEAD
Версия 0.0.5 для rails 4.1.6
=======
При создании использовался rails 4.0.0.rc1.
>>>>>>> 0c68a5aa086798859fdb4a0ad6aaa137b1f20a9f

## Что это такое?

Гем генерирует некоторые константы.
* Добавляестя текст в Gemfile (список гемов).
* Используется шаблонизатор slim
* Генерируется контроллер pages для статических страниц index about contact
* Добавляется текст в routes.rb
* Добавляется хелпер метод title
* Меняется шаблон application в layouts
* Добавляются куски шаблонов в views/shared
* Создается файл custom.css.scss, в котором импортируется twitter bootstrap.
* Последней строкой подключается custom в application.css
* config.time_zone = 'Moscow'
* config.active_record.default_timezone = :local
* config.i18n.default_locale = :ru
<<<<<<< HEAD
* Используется шаблон Sticky footer with fixed navbar (http://getbootstrap.com/examples/sticky-footer-navbar)

### Список гемов

* gem 'russian'
* gem 'slim-rails'
* gem 'rails_best_practices', group: :development, require: false
* gem 'kaminari'
* gem 'bootstrap-sass'
* gem 'simple_form'
* gem 'jquery-turbolinks'

=======
* Используется шаблон Sticky footer with fixed navbar (http://twitter.github.io/bootstrap/examples/sticky-footer-navbar.html)

### Список гемов
* gem 'russian'
* gem 'slim', '~> 1.3.8'
* gem 'slim-rails', '~> 1.1.1'
* gem 'tilt', '~> 1.3.7'
* gem 'kaminari'
* gem 'bootstrap-sass'
>>>>>>> 0c68a5aa086798859fdb4a0ad6aaa137b1f20a9f

#### группа тест:

* gem 'rspec-rails'
* gem 'webrat'
* gem 'factory_girl_rails'

##### группа девелопмент:

* gem 'rspec-rails'
* gem 'quiet_assets'

#### гемы в комментариях:
<<<<<<< HEAD
* gem 'tilt', '~> 1.3.7'
=======
>>>>>>> 0c68a5aa086798859fdb4a0ad6aaa137b1f20a9f
* gem 'thinking-sphinx'
* gem 'delayed_job_active_record'
* gem 'devise'
* gem 'devise-russian', '~> 2.0.1.1'
* gem 'activeadmin'
* gem 'meta_search', '>= 1.1.0.pre'


## Установка

Добавить строку в Gemfile:

    gem 'russpeeddev'

Затем выполнить:

    $ bundle update

Или установить в ручном режиме командой:

    $ gem install russpeeddev

## Использование

<<<<<<< HEAD
Создать новое приложение, прописать этот гем в Gemfile (выполнить bundle) , выполнить команду:

    $ rails g russpeeddev

=======
Создать новое приложение, установить этот гем в Gemfile (выполнить bundle) , выполнить команду:

    $ rails g russpeeddev

## Баги rails 4.0.0.rc1

Есть проблема с зависимостями slim-rails, slim и  tilt 1.4.0. Решается запуском bundle update и повторной генерацией russpeeddev
>>>>>>> 0c68a5aa086798859fdb4a0ad6aaa137b1f20a9f


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
