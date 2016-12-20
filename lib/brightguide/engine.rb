module Brightguide
  class Engine < ::Rails::Engine
    isolate_namespace Brightguide

    initializer "Precompile hook", group: :all do |app|
      app.config.assets.precompile += ["brightguide/application.css", "brightguide/application.js"]
    end
  end
end
