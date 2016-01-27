def in_sphere?(coords=0, radius)
  coords.inject(0) {|total,x| total += x**2} <= radius**2
end