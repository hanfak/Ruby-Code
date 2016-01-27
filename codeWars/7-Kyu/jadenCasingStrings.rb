class String
  def toJadenCase
   self.split.inject([]){|s,z| s << z.capitalize}.join(" ")
  end
end