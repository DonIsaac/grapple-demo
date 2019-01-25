# Dynamic tables (AJAX)
class MyAjaxTableBuilder < Grapple::AjaxDataGridBuilder

	# Cycle row colors
	configure :body, tr: Proc.new { |template| { :class => template.cycle('even', 'odd') } }
	helper :ransack_form, Grapple::Components::RansackSearchForm
	helper :ransack_colhead, Grapple::Components::RansackColumnHeadings
	
	# To enable history by default
	#self.container_attributes(template, options)
	#	options[:history] = true if options[:history].nil?
	#	super(template, options)
	#end
	
end