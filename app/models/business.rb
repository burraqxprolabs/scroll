class Business < ApplicationRecord
  belongs_to :user
  has_many :tenants, dependent: :destroy
end
