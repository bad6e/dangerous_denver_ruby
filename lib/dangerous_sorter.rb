class DangerousSorter

  def initialize(array)
    find_most_dangerous_areas(array)
  end

  def find_most_dangerous_areas(array)
    area_group = Hash[array.group_by {|x| x}.map {|k,v| [k,v.count]}]
    results = sort_areas_by_occurance(area_group)
    if results.any? != false
      puts results[0..4].inspect
    end
  end

  def sort_areas_by_occurance(hash)
    hash.sort {|a1,a2| a2[1]<=>a1[1]}
  end
end