require "name_to_gender/version"
require "name_to_gender/parser"
require "name_to_gender/lookup"

module NameToGender
  POSSIBLE_RESULTS = [
    MALE = "M".freeze,
    FIRST_PART_MALE = "1M".freeze,
    LIKELY_MALE = "?M".freeze,
    UNISEX = "?".freeze,
    LIKELY_FEMALE = "?F".freeze,
    FIRST_PART_FEMALE = "1F".freeze,
    FEMALE = "F".freeze
  ].freeze

  def self.build
    Parser.new.parse
  end
end
