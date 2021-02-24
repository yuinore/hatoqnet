module ApplicationHelper
  def button_style(top_link)
    chrs = "0123456789ABCDEF"
    r = chrs.index(top_link.shadow_color[1].upcase)
    r = chrs.index(top_link.shadow_color[2].upcase) + r * 16
    g = chrs.index(top_link.shadow_color[3].upcase)
    g = chrs.index(top_link.shadow_color[4].upcase) + g * 16
    b = chrs.index(top_link.shadow_color[5].upcase)
    b = chrs.index(top_link.shadow_color[6].upcase) + b * 16
    "background-color: #{top_link.color}; filter: drop-shadow(3px 4px 3px rgba(#{r},#{g},#{b},0.5));"
  end
end
