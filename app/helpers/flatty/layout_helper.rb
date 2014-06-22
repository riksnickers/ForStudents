module Flatty::LayoutHelper

  def flatty_row(&block)

    content_tag :div, {class: 'row'}, &block

  end

  def flatty_col(desktopSize = 12, mobileSize = 12, html_options = {}, &block)

    html_options.merge!( {class: "col-xs-" + mobileSize.to_s + " col-md-" + desktopSize.to_s} ) {|key, old, new| new + " " + old.to_s}
    content_tag :div, html_options, &block

  end

  def flatty_page_header(title = nil, icon = nil)

    content_tag :div, "", {class: "page-header"} do
      #Page title
      content_tag :h1, "", {class: "pull-left"} do
        concat content_tag :i, "", {class: "fa " + icon}
        concat content_tag :span, title
      end

    end

  end



end