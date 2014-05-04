class MyHTMLRenderer < Redcarpet::Render::HTML
  def header(text, header_level, options)


  	if header_level == 1 
  		s = "<div><h#{header_level}>#{text}</h#{header_level}>"
  		h_used = true
  		return s
  		#h_used = true
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

  	if h_used == true
  		s = "</div>"
  		h_used = false
  		return s
  	end

  	
  end

  def new_div(text)

  end
end