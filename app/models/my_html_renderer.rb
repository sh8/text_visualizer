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

  end

  def new_div(text)
    
  end
  
  def list(contents, list_type)
    case list_type
       when :ordered
         "<div class='h2item  h3bracket'><p>\n\n.nr step 0 1\n#{contents}\n</p></div>\n"
       when :unordered
         "<div class='h2item h3bracket'><p>\n.\n#{contents}</p></div>\n"
       end
  end
end

def doc_footer()

end