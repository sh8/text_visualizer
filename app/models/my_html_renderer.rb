class MyHTMLRenderer < Redcarpet::Render::HTML

  def header(text, header_level, options)
    
    	if header_level == 1 
        if @h3_opened == true
          a = "</div>"
          @h3_opened = nil
        end

        if @count == nil
          @count = true
# <<<<<<< HEAD
#           s = "<div class='item'><h#{header_level}>#{text}</h#{header_level}>"
#           return a.to_s() + s
#         end
        
#     		s = "</div></div>\n<div class='item'><h#{header_level}>#{text}</h#{header_level}>"
# =======
          s = "<div class='container'><div class='box column2'><h#{header_level}>#{text}</h#{header_level}></div>"
          return s
        end
        
    		s = "</div>\n<div class='container'><div class='box column2'><h#{header_level}>#{text}</h#{header_level}></div>"
          
        return s
    	end

    	if header_level == 2
# <<<<<<< HEAD
#         if @h3_opened == true
#           a = "</div>"
#           @h3_opened = nil
#         end
        
#   		  s = "<div class='item2'><h#{header_level}>#{text}</h#{header_level}></div>"
#   		  return a.to_s() + s
#     	end

#     	if header_level == 3
#         if @h3_opened == true
#           a = "</div><div class='item3'><h#{header_level}>#{text}</h#{header_level}>"
#           #@h3_opened = nil
#           return a
#         else #h3_opened = nil
#           s = "<div class='item3'><h#{header_level}>#{text}</h#{header_level}>"
#           @h3_opened = true
#           return s
#         end
        
        

#         # if @h3_opened == nil 
#         #   s = "<div class='item3'><h#{header_level}>#{text}</h#{header_level}>"
#         #   @h3_opened = true
#         #   return a.to_s() + s
#         # end
    		
#     	end

#     	if header_level == 4
#         if @h3_opened == true
#           a = "</div>"
#           @h3_opened = nil
#         end

#     		s = "<h#{header_level}>#{text}</h#{header_level}>"
#     		return a.to_s() + s
# =======
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

  # def list(contents, list_type)
  #   "<div class='item4'>#{contents}</div>"
  # end

  def new_div(text)
    
  end
  
  def list(contents, list_type)
    case list_type
       when :ordered
         "<div class='box column4'>\n\n.nr step 0 1\n#{contents}\n</div>"
       when :unordered
         "<div class='box column4'>#{contents}</div>"
       end
  end
end