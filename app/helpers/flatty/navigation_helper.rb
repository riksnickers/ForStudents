module Flatty::NavigationHelper

    def flatty_navigation(&block)
      content_tag(:ul, {class: "nav nav-stacked"}, &block)
    end

    def flatty_navigation_item(path = nil, name = nil, icon = "fa-caret-right", &block)
      active = nil
      url = url_for path
      if request.path == url
        active = {class: "active"}
      end
      content_tag :li, active do
        link_to url do
          concat content_tag :i, "", {class: ("icon fa " + icon unless icon == nil)}
          concat content_tag(:span, name)
        end
      end
    end

    def flatty_navigation_drop_down(name = nil, icon = "fa-caret-right", &block)
      #todo: http://stackoverflow.com/questions/21777966/bootstrap-pills-tabs-dropdowns-an-unhappy-marriage
      #Create Menu Title
      dropDownTitle = link_to '#', {class: "dropdown-collapse", data: {no_turbolink: true}} do
        concat content_tag :i, "", {class: "icon fa " + icon}
        concat content_tag :span, name
        concat content_tag :i, "", {class: "fa fa-angle-down angle-down"}
      end

      #Create Menu Item content
      dropDownContent = content_tag(:ul, {class: "nav nav-stacked"}, &block)

      #Create drop down item with title and content
      dropDownObject = content_tag(:li) do
        dropDownTitle + dropDownContent
      end
    end

end