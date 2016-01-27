def most_frequent_item_count(collection)
  if collection != []
    item_hash = Hash.new(0)
    collection.each {|item| item_hash[item] += 1; }
    item_hash.values.max
  else
    0
  end
end