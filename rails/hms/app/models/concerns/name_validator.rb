class NameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
  if value.split(" ").count < 2
    record.errors.add :name, message: "Please provide full name"
  end
  end
end 