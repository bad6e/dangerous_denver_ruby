require_relative 'parser'
require 'pry'

class Denver

  def initialize
    @data = Parser.new("./data/traffic-accidents.csv").parse_csv
  end
end

Denver.new