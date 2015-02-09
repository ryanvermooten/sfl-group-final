class LabeledFormBuilder < ActionView::Helpers::FormBuilder
	def text_field(name, *args)
		@template.contect_tag :div, class: "field" do |
			label(name) + @template
			
		end