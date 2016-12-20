require "redcarpet"
require "brightguide/engine"
require "brightguide/parser"

module Brightguide
  mattr_accessor :stylesheet_location
  @@stylesheet_location = "application"

  mattr_accessor :stylesheets_path
  @@stylesheets_path = "app/assets/stylesheets"

  def self.setup
    yield self
  end
end
