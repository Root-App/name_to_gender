module NameToGender
  class Lookup
    def initialize
      @names = {}
    end

    def add_name(gender, name)
      raise "Unknown gender #{gender}" unless POSSIBLE_RESULTS.include?(gender)
      raise "Name already exists #{name} with different gender" if @names.has_key?(name.downcase) && @names[name.downcase] != gender
      @names[name.downcase] = gender
    end

    def gender_of(name)
      @names[name.downcase]
    end
  end
end
