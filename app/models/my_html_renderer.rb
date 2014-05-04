class MyHTMLRenderer < Redcarpet::Render::HTML
  def header(text, header_level, options)


  	if header_level == 1 
  		"<div><h#{header_level}>#{text}</h#{header_level}>"
  		#h_used = true
  	end

  	
  end

  def new_div(text)

  end
end