# -*- encoding: utf-8 -*-
module ApplicationHelper
  def title
    #возвращает заголовок на страницу
    base_title = "#{Rails.application.class.parent_name} - this is ApplicationHelper method"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end