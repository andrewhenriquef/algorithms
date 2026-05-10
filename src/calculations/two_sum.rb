
# O(n²)
# def two_sum(nums, target)
#   found_two_sum = nil
#   last_index = nums.length - 1
#
#   nums.each_with_index do |num, count1|
#     count2 = 0
#
#     while count2 <= last_index
#       if count1 == count2
#         count2 += 1
#       elsif num + nums[count2] == target
#         return [count1, count2]
#       else
#         count2 += 1
#       end
#     end
#   end
# end
#

# O(n)
def two_sum nums, target
  dictionary = {}

  nums.each_with_index do |num, index|
    if dictionary[num]
      return [dictionary[num], index]
    else
      dictionary[target - num] = index
    end
  end
end
