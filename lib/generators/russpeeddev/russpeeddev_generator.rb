# -*- encoding: utf-8 -*-
module Russpeeddev
  module Generators
    class RusspeeddevGenerator < Rails::Generators::Base
      require 'thor'
      desc "This generator creates templates files to speed up rails development"
      namespace "russpeeddev"
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      def add_to_gemfile
        #add gems to Gemfiles and run bundle install
        append_to_file 'Gemfile' do
"\n
#-------------------------------
# Added by gem russpeeddev
# uncomment what you need
#-------------------------------
gem 'russian'
gem 'slim-rails'
gem 'kaminari'
gem 'bootstrap-sass'
gem 'simple_form'
gem 'jquery-turbolinks'
gem 'auto_strip_attributes', '~> 2.0'

# gem 'thinking-sphinx'
# gem 'delayed_job_active_record'
# gem 'devise'
# gem 'devise-russian', '~> 2.0.1.1'
# gem 'activeadmin'
# gem 'meta_search', '>= 1.1.0.pre'
# gem 'tilt', '~> 1.3.7'
# gem 'carrierwave'
# gem 'mini_magick'
# gem 'awesome_nested_fields'

gem 'rspec-rails', group: [:development, :test]
gem 'webrat', group: :test
gem 'factory_girl_rails', group: :test
gem 'quiet_assets', group: :development #hide logs
gem 'rails_best_practices', group: :development, require: false

#-------------------------------
# End gem russpeeddev.
#-------------------------------
"
        end
      end

      def run_bundle_update
        run('bundle update')
      end

      def generate_static_pages
        generate("controller", "pages index about contact")
      end

      def add_root_to_routes
        insert_into_file "config/routes.rb" , after: "Rails.application.routes.draw do" do
          "\n  root 'pages#index'\n  get 'about' => 'pages#about'\n  get 'contact' => 'pages#contact'"
        end
        comment_lines 'config/routes.rb', "get 'pages/index'"
        comment_lines 'config/routes.rb', "get 'pages/about'"
        comment_lines 'config/routes.rb', "get 'pages/contact'"
      end

      def create_custom_css_scss
        template "custom.css.scss.temp", "app/assets/stylesheets/custom.css.scss"
        insert_into_file "app/assets/stylesheets/application.css" , before: "*/" do
          "*= require custom\n"
        end
      end

      def copy_shared_templates
        template "_footer.html.slim.temp", "app/views/shared/_footer.html.slim"
        template "_header.html.slim.temp", "app/views/shared/_header.html.slim"
        template "_mainmenu.html.slim.temp", "app/views/shared/_mainmenu.html.slim"
        template "_meta.html.slim.temp", "app/views/shared/_meta.html.slim"
        template "_nojs.html.temp", "app/views/shared/_nojs.html"
        template "_outdate.html.slim.temp", "app/views/shared/_outdate.html.slim"
        remove_file 'app/helpers/application_helper.rb'
        template "application_helper.rb.temp", "app/helpers/application_helper.rb"
        remove_file 'app/views/layouts/application.html.erb'
        template "application.html.slim.temp", "app/views/layouts/application.html.slim"
      end


      def edit_application_rb
        insert_into_file "config/application.rb" , after: "# config.i18n.default_locale = :de" do
          "\n    config.i18n.default_locale = :ru\n"
        end
        insert_into_file "config/application.rb" , after: "# config.time_zone = 'Central Time (US & Canada)'" do
          "\n    config.time_zone = 'Moscow'\n    config.active_record.default_timezone = :local\n"
        end
      end
      #0.0.5
      def copy_slim_rb_to_initializers
        template "slim.rb.temp", "config/initializers/slim.rb"
        remove_file "app/assets/javascripts/application.js"
        template "application.js.temp", "app/assets/javascripts/application.js"
        template "html5shiv.min.js.temp", "lib/assets/html5shiv.min.js"
        template "respond.js.temp", "lib/assets/respond.js"
      end

    end
  end
end