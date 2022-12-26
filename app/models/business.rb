class Business < ApplicationRecord
  has_many :users, through: :tenants
  has_many :tenants, dependent: :destroy
end
