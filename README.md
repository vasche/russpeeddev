# Russpeeddev

Генерирует куски кода для быстрого старта разработки нового приложения.

Для rails 4.0.0.rc1.

## Что это такое?

Гем генерирует некоторые константы.
* Добавляестя текст в Gemfile (список гемов).
* Используется шаблонизатор slim
* Генерируется контроллер pages для статических страниц index about contact
* Добавляется текст в routes.rb
* Добавляется хелпер метод title
* Меняется шаблон application
* Добавляются куски шаблонов в views/shared
* TODO: Поменять часовой пояс и локаль в application.rb


## Установка

Добавить строку в Gemfile:

    gem 'russpeeddev', git: 'https://github.com/vasche/russpeeddev.git'

Затем выполнить:

    $ bundle update

Или установить в ручном режиме командой:

    $ gem install russpeeddev

## Использование

Создать новое приложение, установить этот гем в Gemfile (выполнить bundle) , выполнить команду:

    $ rails g russpeeddev

## Баги rails 4.0.0.rc1

Есть проблема с зависимостями slim-rails, slim и  tilt 1.4.0. Решается запуском bundle update и повторной генерации russpeeddev


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
