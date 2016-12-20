require_dependency "brightguide/application_controller"
require_dependency "brightguide/markdown_helper"

module Brightguide
  class CardsController < ApplicationController
    def index
      @cards = Card.all
    end
  end
end
