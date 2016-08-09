module Refinery
  module Redactor
    class ResourcesController < ::Refinery::AdminController

      def create
        @resource = Refinery::Resource.new(file: params[:file])

        if @resource.save
          render json: {filelink: @resource.url, url: @resource.url, id: @resource.id}
        else
          render json: {errors: @resource.errors}, status: :not_acceptable
        end
      end

    end
  end
end
