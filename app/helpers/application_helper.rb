module ApplicationHelper

  def icon(type)
    case type
      when "plus"
        "<span class=\"glyphicon glyphicon-plus\"></span>".html_safe
      when "remove"
        "<span class=\"glyphicon glyphicon-remove\"></span>".html_safe
      when "edit"
        "<span class=\"glyphicon glyphicon-pencil\"></span>".html_safe
      when "show"
        "<span class=\"glyphicon glyphicon-eye-open\"></span>".html_safe
      else
        "Click Me"
    end
  end

end
