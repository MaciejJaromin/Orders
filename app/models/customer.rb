class Customer < ActiveRecord::Base
  has_many :placed_orders
  validates :name, presence: true
end
