module Refinery
  module Redactor
    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
    end

    require 'refinery/redactor/version'
    require 'refinery/redactor/engine'
  end
end
