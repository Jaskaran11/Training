class AuthorValidator < ActiveModel::Validator
  def validate(record)
    if record.name == "Robert Frost"
      record.errors.add :base, "Please dont mention poets only authors!"
    end
  end
end
