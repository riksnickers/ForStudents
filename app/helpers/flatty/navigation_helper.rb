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

    def flatty_navigation_drop_down(name = nil, controller = nil, icon = "fa-caret-right", &block)

      #Check if the controller match the params controller to make the dropdown active.
      extraTag = ''
      if controller == params[:controller]
        extraTag = ' in'
      end

      #Create Menu Title
      dropDownTitle = link_to '#', {class: "dropdown-collapse #{extraTag}", data: {no_turbolink: true}} do
        concat content_tag :i, "", {class: "icon fa " + icon}
        concat content_tag :span, name
        concat content_tag :i, "", {class: "fa fa-angle-down angle-down"}
      end

      #Create Menu Item content
      dropDownContent = content_tag(:ul, {class: "nav nav-stacked #{extraTag}"}, &block)

      #Create drop down item with title and content
      dropDownObject = content_tag(:li) do
        dropDownTitle + dropDownContent
      end
    end

end