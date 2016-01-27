def split_in_parts (s, part_length)
  b = []
  s.chars.each_slice(part_length).to_a.each do |x|
    b<<x.join
  end
  b.join(" ")
end

