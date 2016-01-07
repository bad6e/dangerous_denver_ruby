require 'CSV'
require 'pry'
require_relative 'dangerous_sorter'

class Parser

  def initialize(filename)
    @filename = filename
  end

  def parse_csv
    neighborhood = []
    address = []
    CSV.foreach(@filename,:headers => true, :header_converters => :symbol,
    :converters => :numeric) do |row|
      neighborhood << row[:neighborhood_id]
      address << row[:incident_address]
    end
    DangerousSorter.new(address.compact)
    DangerousSorter.new(neighborhood.compact)
  end

  def parse_crime_csv
    crime = []
    CSV.foreach(@filename,:headers => true, :header_converters => :symbol,
    :converters => :numeric) do |row|
      crime << row[:neighborhood_id]
    end
    DangerousSorter.new(crime.compact)
  end
end