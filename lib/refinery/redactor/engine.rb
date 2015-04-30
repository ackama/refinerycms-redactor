module Refinery
  module Redactor
    class Engine < ::Rails::Engine
      include Refinery::Engine

      isolate_namespace Refinery
      engine_name :refinery_redactor

      # set the manifests and assets to be precompiled
      config.to_prepare do
        Rails.application.config.assets.precompile += %w(
          refinery-redactor/index.css
          refinery-redactor/plugins.js
          refinery-redactor/index.js
        )
      end

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinerycms_redactor"
          plugin.hide_from_menu = true
          plugin.menu_match = %r{refinery/redactor}
        end
      end

      config.after_initialize do
        Refinery.register_engine Refinery::Redactor
      end

      after_inclusion do
        %w(refinery-redactor/index).each do |stylesheet|
          Refinery::Core.config.register_visual_editor_stylesheet stylesheet
        end

        %W(refinery-redactor/index refinery-redactor/plugins).each do |javascript|
          Refinery::Core.config.register_visual_editor_javascript javascript
        end
      end
    end
  end
end
