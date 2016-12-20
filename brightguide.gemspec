$LOAD_PATH.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "brightguide"
  s.version     = "0.0.1"
  s.authors     = ["Brightin developers"]
  s.email       = ["hello@brightin.nl"]
  s.homepage    = "http://www.brightin.nl"
  s.summary     = "Automatically created CSS styleguide."
  s.description = "Parses your styleguides and automatically creates styleguides."

  s.files = Dir["{app,config,db,lib}/**/*"]

  s.add_dependency "redcarpet", "3.3.4"
end
