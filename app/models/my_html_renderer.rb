class MyHTMLRenderer < Redcarpet::Render::HTML
  def header(text, header_level, options)
    
    	if header_level == 1 
        if @count == nil
          @count = true
          s = "<div><h#{header_level}>#{text}</h#{header_level}>"
          return s
        end
        
    		s = "</div>\n<div><h#{header_level}>#{text}</h#{header_level}>"
          
        return s
    	end

    	if header_level == 2
    		s = "<h#{header_level}>#{text}</h#{header_level}>"
    		return s
    	end

    	if header_level == 3
    		s = "<h#{header_level}>#{text}</h#{header_level}>"
    		return s
    	end

    	if header_level == 4
    		s = "<h#{header_level}>#{text}</h#{header_level}>"
    		return s
    	end

  end



  def new_div(text)

  end
end