require_relative 'parser'

class Denver

  def initialize
    @data = Parser.new("./data/traffic-accidents.csv").parse_csv
    @crime_data = Parser.new("./data/crime.csv").parse_crime_csv
  end
end

Denver.new