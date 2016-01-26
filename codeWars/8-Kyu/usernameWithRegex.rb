def validate_usr(username)
  (/^[a-z|_|0-9]{4,16}$/ =~ username) !=nil
end