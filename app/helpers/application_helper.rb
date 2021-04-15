module ApplicationHelper
  def full_title(page_title = '')
    base_title = t :tx2
    return page_title + " | " + base_title if page_title.blank?
    page_title + " | " + base_title
  end       
end
