class MyHTMLRenderer < Redcarpet::Render::HTML
	

  def header(text, header_level, options)
  	@h_used = true
  	if header_level == 1
  		if @h_used == true
  			s = "</div><div><h#{header_level}>#{text}</h#{header_level}>"
  			return s
  		end
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

  	# if h_used == true
  	# 	s = "</div>"
  	# 	h_used = false
  	# 	return s
  	# end

  	
  end

  def new_div(text)

  end
end