class JavascriptsController < ApplicationController
	def dynamic_groups
		@groups = Group.find(:all)
end
