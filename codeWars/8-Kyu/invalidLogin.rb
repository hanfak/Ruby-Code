def validate(username, password)
    Validator.new.login(username, password)
end