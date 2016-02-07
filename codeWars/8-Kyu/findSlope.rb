def find_slope(points)
  a,b,c,d = points
  a-c == 0 ? "undefined" : ((b-d)/(a-c)).to_s
end