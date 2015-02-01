module ApplicationHelper
	include ActionView::Helpers::TagHelper
def javascript(*files)
	content_for(:head) { javascript_include_tag(*files)}
end
end
