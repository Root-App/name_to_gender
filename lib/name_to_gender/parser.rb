module NameToGender
  class Parser
    DATA_FILE = File.expand_path("../data/nam_dict.txt", __FILE__).freeze
    USA_OFFSET = 32

    def initialize(data_file = DATA_FILE)
      @data_file = data_file
    end

    def parse
      lookup = Lookup.new

      file = File.open(@data_file, "r", :encoding => "iso8859-1:UTF-8").read
      file.gsub!(/\r\n?/, "\n")
      file.each_line do |line|
        next if line.start_with?("#") || line.start_with?("=")
        next if line[USA_OFFSET] == " "
        gender, name, * = line.split
        lookup.add_name(gender, name)
      end

      lookup
    end
  end
end
