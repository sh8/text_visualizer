class MyHTMLRenderer < Redcarpet::Render::HTML
  def header(text, header_level, options)


    if header_level == 1 
        if @h1_is_open == nil
          @h1_is_open = true
          s = "<div class='h1bracket'><div class='h1item h1box'><h#{header_level}>#{text}</h#{header_level}></div>"
          return s
        end

        s = "</div></div>\n<div class='h1bracket'><div class='h1item h1box'><h#{header_level}>#{text}</h#{header_level}>"
        return s

      end

      if header_level == 2
        if @h2_is_open == nil
          @h2_is_open = true  
          s = "<div class='h2bracket'><div class='h2item h2box'><h#{header_level}>#{text}</h#{header_level}></div>"
          return s
        end

          s = "</div>\n<div class='h2bracket'><div class='h2item h2box'><h#{header_level}>#{text}</h#{header_level}></div>"
          return s
      end
      if header_level == 3
        s = "<div class='h3bracket'><div class='h3item h3box'><h#{header_level}>#{text}</h#{header_level}></div></div>"
        return s
      end


      if header_level == 4
        s = "<div class='box column2'><h#{header_level}>#{text}</h#{header_level}></div>"
        return s
      end

      # def open_brackets
      #   if nil
      #     {1 => 0, 2 => 0, 3 => 0}
      #   end
      # end

      # def previous_header_num

      # end

  end

  # def list(contents, list_type)
  #   case list_type
  #      when :ordered
  #        "<div class='h2item  h3bracket bullets'><br><br><p>\n\n.nr step 0 1\n#{contents}\n</p></div>\n<br><br>"
  #      when :unordered
  #        "<div class='h2item h3bracket'><br><br><p>\n\n#{contents}</p></div>\n<br><br>"
  #      end
  # end

  def list_item(text, list_type)
    case list_type
       when :ordered
         "<div class='h2item  h3bracket bullets'><p>\n\n.nr step 0 1\n#{contents}\n</p></div>\n"
       when :unordered
         "<div class='h2item h3bracket'><p>\n\n<span class='bulletmark'>●</span>#{text}</p></div>\n"
       end
  end

  
  def image(link, title, alt_text)
  # "<img src='http://#{title}.jpg.to'>"
    if link == nil
      "<p><img src='http://#{alt_text}.jpg.to' style='width:90%;'></p>"
    else
    "<p><img src='#{link}' alt='#{alt_text}' style='width: 90%;'/></p>"
    end
  end



  def double_emphasis(text)
    "<strong style='background-color: #FFFA55;'>#{text}</strong>"
  end


end