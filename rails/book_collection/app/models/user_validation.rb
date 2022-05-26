class UserValidation < ApplicationRecord
    validates :name, presence: true
end
