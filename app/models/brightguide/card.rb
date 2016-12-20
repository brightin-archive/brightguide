module Brightguide
  class Card
    attr_reader :name, :sections, :folder_name
    delegate :present?, to: :sections

    def self.all
      Brightguide::Parser.all.map { |item| new(item) }.select(&:present?)
    end

    def initialize(name:, sections:, folder_name:)
      @name = name
      @sections = sections
      @folder_name = folder_name
    end

    def to_partial_path
      "brightguide/cards/card"
    end
  end
end
