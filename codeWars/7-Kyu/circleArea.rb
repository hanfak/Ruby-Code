def circle_area r
  return false unless ((r.kind_of? Numeric) && r >0 )
  (Math::PI * r * r).round(2)
end