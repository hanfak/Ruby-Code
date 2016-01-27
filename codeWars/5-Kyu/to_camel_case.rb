def to_camel_case(str)
  a = str.split(/[-,_]/)
  ([a.shift] << a.map! {|word| word.capitalize}).join
end