class Order < ActiveRecord::Base
  has_many :empanadas
  has_many :empanada_types, through: :empanadas
  belongs_to :eater, class_name: :User
end
