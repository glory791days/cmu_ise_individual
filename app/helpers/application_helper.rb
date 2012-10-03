module ApplicationHelper
	# Returns the full title on a per-page basis.
  # @param [Object] page_title
	def full_title(page_title)
    base_title = "Bancha"
    if page_title.empty?
      "#{base_title}: Find your favorite cafe at CMU"
    else
      "#{base_title} | #{page_title}"
    end
  end
end
