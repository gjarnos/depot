module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
  
  def hidden_div_confirm(condition, attributes = {}, &block)
    if !condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
end