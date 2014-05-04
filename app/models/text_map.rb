
# == Schema Information
#
# Table name: text_maps
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  text       :string(255)
#


require 'redcarpet'

class TextMap < ActiveRecord::Base



	def format_text


		renderer = MyHTMLRenderer.new(render_options = {})
		markdown = Redcarpet::Markdown.new(renderer, extensions = {})

		base_string = self.text
		 
		rendered_string = markdown.render base_string

		return rendered_string

	end

end
