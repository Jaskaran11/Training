module Validatable
  extend ActiveSupport::Concern
  included do
    validates :title, length: { maximum: 100,
      too_long: "%{count} characters is the maximum allowed"}
  end
end