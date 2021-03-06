class Order < ApplicationRecord
  belongs_to :user, optional: true
  enum status: [:cart, :paid, :canceled]
  has_one :product, dependent: :nullify
end
