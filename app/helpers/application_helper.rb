# this is application helper module
module ApplicationHelper
  # method return full page title per page basis
  def full_title(title_page)
    base_title = 'Ruby on Rail Tutorial Sample App'
    if title_page.empty?
      base_title
    else
      "#{base_title} | #{title_page}"
    end
  end
end
