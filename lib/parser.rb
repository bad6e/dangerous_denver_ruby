require 'CSV'
require 'pry'
require_relative 'dangerous_sorter'

class Parser
  def parse_csv(filename, attribute_one = nil, attribute_two = nil)
    information_one = []
    information_two = []
    CSV.foreach(filename,:headers => true, :header_converters => :symbol) do |row|
      information_one << row[attribute_one]
      information_two << row[attribute_two]
    end
    DangerousSorter.new(information_one.compact)
    DangerousSorter.new(information_two.compact)
  end
end