class Admin::TagsController < ApplicationController
	def create
		@resource = Resource.find(params[:resource_id])
		if params[:tag][:title].nil?
			redirect_to admin_resource_path(@resource.id)
			return
		else
			if params[:tag][:title] == 'Nuevo tag'
				if params[:new_tag] == 'Nuevo tag'
					redirect_to admin_resource_path(@resource.id)
					return
				else
					@tag = @resource.tags.new
					@tag.title = params[:new_tag]
				end
			else
				@tag = @resource.tags.new(params[:tag])				
			end
			if Resource.joins(:tags).where(:tags => {:title => params[:tag][:title]}, :id => @resource.id).any?
				redirect_to admin_resource_path(@resource.id)
				return
			end
			if @tag.save
				redirect_to admin_resource_path(@resource.id)
			else
				redirect_to admin_resource_path(@resource.id)
			end
		end
	end

	def destroy
		@resource = Resource.find(params[:resource_id])
		@tag = @resource.tags.find(params[:id])

		@tag.destroy
		redirect_to admin_resource_path(@resource.id)
	end
end
