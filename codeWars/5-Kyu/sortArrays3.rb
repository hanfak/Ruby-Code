def sortme( courses )
  arr = courses.inject([]) {|arr, course| arr<<course.split("-").reverse.join("-")}
  arr.sort.collect {|course| course.split("-").reverse.join("-")}
end