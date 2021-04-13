module ApplicationHelper
    
    # Returns the full title on a per-page basis.
    def full_title(page_title = '')
        base_title = t :tx2
        return page_title + " | " + base_title if page_title.empty?
        page_title + " | " + base_title
    end       
end
