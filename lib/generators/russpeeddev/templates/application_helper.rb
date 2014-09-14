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
<<<<<<< HEAD

  def year
    Time.now.year
  end

  def cp(path)
    "active" if request.url.include?(path)
  end

  def author
    "Vasche"
  end
=======
>>>>>>> 0c68a5aa086798859fdb4a0ad6aaa137b1f20a9f
end