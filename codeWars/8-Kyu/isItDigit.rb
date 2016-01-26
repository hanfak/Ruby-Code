class String
  def digit?
    !!(self =~ /\A\d\z/)
  end
end