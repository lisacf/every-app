module ApplicationHelper
		def full_title(page_title)
		base_title = "Every Cupcake"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def render_stars(rating)
		StarRenderer.new(rating, self).render_stars
	end

	def markdown(text)
		redcarpetmarkdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, 
			:autolink => true, :space_after_headers => true, :hard_wrap => true, :filter_html=>true, :highlight=> true,
			:quote => true)
		redcarpetmarkdown.render(text).html_safe
	end
end
