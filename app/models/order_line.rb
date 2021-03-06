class OrderLine < ActiveRecord::Base
  belongs_to :product
  belongs_to :placed_order
  validates :amount, presence: true
  validates :amount, numericality: {greater_than: 0}
end
