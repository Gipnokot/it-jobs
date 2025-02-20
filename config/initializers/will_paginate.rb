require "will_paginate/view_helpers/link_renderer"

WillPaginate::ViewHelpers.pagination_options[:renderer] = Class.new(WillPaginate::ViewHelpers::LinkRenderer) do
  def to_html
    list_items = pagination.map do |item|
      case item
      when Integer
        page_number(item)
      else
        send(item)
      end
    end

    tag.div(list_items.join("\n").html_safe, class: "join flex justify-center mt-6")
  end

  def page_number(page)
    classes = "join-item btn"
    classes += " btn-active" if page == current_page

    tag.a(page, href: url(page), class: classes)
  end

  def previous_page
    return unless @collection.previous_page

    tag.a("Назад", href: url(@collection.previous_page), class: "join-item btn")
  end

  def next_page
    return unless @collection.next_page

    tag.a("Вперёд", href: url(@collection.next_page), class: "join-item btn")
  end
end
