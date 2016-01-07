require 'CSV'
require 'pry'
require_relative 'dangerous_sorter'

class Parser
  def parse_csv(filename, attribute)
    information = []
    CSV.foreach(filename,:headers => true, :header_converters => :symbol,
    :converters => :numeric) do |row|
      information << row[attribute]
    end
    DangerousSorter.new(information.compact)
  end
end