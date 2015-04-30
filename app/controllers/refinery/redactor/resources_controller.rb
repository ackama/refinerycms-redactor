module Refinery
  module Redactor
    class ResourcesController < ::Refinery::AdminController

      def create
        @resource = Refinery::Resource.new(file: params[:file])

        if @resource.save
          render json: {filelink: @resource.url}
        else
          render json: {errors: @resource.errors}, status: :not_acceptable
        end
      end

    end
  end
end
