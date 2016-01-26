def validate_code(code)
  !!(/^[1-3]/ =~ code.to_s)
end