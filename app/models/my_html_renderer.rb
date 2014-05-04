class MyHTMLRenderer < Redcarpet::Render::HTML
  def header(text, header_level, options)
    
    	if header_level == 1 
        if @count == nil
          @count = true
          s = "<div class='container'><div class='box column2'><h#{header_level}>#{text}</h#{header_level}></div>"
          return s
        end
        
    		s = "</div>\n<div class='container'><div class='box column2'><h#{header_level}>#{text}</h#{header_level}></div>"
          
        return s
    	end

    	if header_level == 2
    		s = "<div class='box column2'><h#{header_level}>#{text}</h#{header_level}></div>"
    		return s
    	end

    	if header_level == 3
    		s = "<div class='box column2'><h#{header_level}>#{text}</h#{header_level}></div>"
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
         "<div class='box column2'>\n\n.nr step 0 1\n#{contents}\n</div>"
       when :unordered
         "\n<div class='box column2'>\n#{contents}\n</div>"
       end
  end
end