# frozen_string_literal: true

module Heroicon
  class Engine < ::Rails::Engine
    isolate_namespace Heroicon

    initializer "heroicon.helper" do
      ActiveSupport.on_load(:action_controller_base) do
        helper Heroicon::Engine.helpers
      end
    end
  end
end
