class MyHTMLRenderer < Redcarpet::Render::HTML

  def header(text, header_level, options)
    
    	if header_level == 1 
        if @count == nil
          @count = true
          s = "<div class='item'><h#{header_level}>#{text}</h#{header_level}>"
          return s
        end
        
    		s = "</div>\n<div class='item'><h#{header_level}>#{text}</h#{header_level}>"
          
        return s
    	end

    	if header_level == 2
        
  		  s = "<div class='item2'><h#{header_level}>#{text}</h#{header_level}></div>"
  		  return s
    	end

    	if header_level == 3
    		s = "<div class='item3'><h#{header_level}>#{text}</h#{header_level}></div>"
    		return s
    	end

    	if header_level == 4
    		s = "<h#{header_level}>#{text}</h#{header_level}>"
    		return s
    	end

  end

  def list(contents, list_type)
    "<div class='item4'>#{contents}</div>"
  end



  def new_div(text)

  end
end