# Should return ᐃ type:
#  0 : if ᐃ cannot be made with given sides
#  1 : acute ᐃ
#  2 : right ᐃ
#  3 : obtuse ᐃ

def triangle_type (a, b, c)
  arr = [a,b,c]
  k = arr.delete_at(arr.index(arr.max))
 
  return 0 if k >= arr[0] + arr[1]
  return 1 if arr[0]**2 + arr[1]**2 > k**2
  return 2 if arr[0]**2 + arr[1]**2 == k**2
  return 3 if arr[0]**2 + arr[1]**2 < k**2
end