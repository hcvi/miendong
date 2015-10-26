module ApplicationHelper
  def active_link_to(name = nil, options = nil, html_options = {}, &block)
    active_class = html_options[:active] || "active"
    html_options.delete(:active)
    html_options[:class] = "#{html_options[:class]} #{active_class}" if current_page?(options)
    link_to(name, options, html_options, &block)
  end

  def li_active_link(name = nil, options = nil, html_options = {}, &block )
    active_class = "active" if current_page?(options)
    content_tag(:li, role: 'presentation', class: active_class ) do 
      link_to(name, options, html_options, &block)
    end    
  end
  
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end
end
