def summary_ranges(nums)

  first_num = nums.uniq.first
  x = nums.slice_before do |e|
    expected, first_num = first_num.next, e
    expected != first_num
  end.to_a.uniq
  x.inject([]) {|arr,z|   z.length == 1 ? arr << z.join.to_s : arr << "#{z.min}->#{z.max}"}

end