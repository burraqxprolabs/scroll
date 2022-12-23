class Tenant < ApplicationRecord
  belongs_to :user
  has_many :businesses, dependent: :destroy
end
