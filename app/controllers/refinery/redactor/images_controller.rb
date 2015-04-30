module Refinery
  module Redactor
    class ImagesController < ::Refinery::AdminController

      def create
        @image = Refinery::Image.new(image: params[:file])

        if @image.save
          render json: {filelink: @image.url}
        else
          render json: {errors: @image.errors}, status: :not_acceptable
        end
      end

    end
  end
end
