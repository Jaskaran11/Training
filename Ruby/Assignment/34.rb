# 34. Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the 
# result must be unique and you may return the result in any order.x 
module Intersection
  def self.intersection_arrays_hash(array1, array2)
    hash = {}
    intersect_array = []
    array1.each { |num| hash[num] = array2.any?(num) }
    hash.each { |key, value| if value then intersect_array << key end }
    intersect_array 
  end
end