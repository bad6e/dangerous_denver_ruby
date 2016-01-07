require_relative 'parser'

class Denver

  def initialize
    @data = Parser.new.parse_csv("./data/traffic-accidents.csv", :incident_address, :neighborhood_id)
    @data = Parser.new.parse_csv("./data/crime.csv", :neighborhood_id)
  end
end

Denver.new