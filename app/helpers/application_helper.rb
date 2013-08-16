module ApplicationHelper

	def sidenav_item(path)
		if current_page?(path)
			'active list-group-item'
		else
			'list-group-item'
		end
	end

	def header_nav(path)
		if current_page?(path)
			'active'
		else
			''
		end
	end
end
