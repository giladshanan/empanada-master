class Order < ActiveRecord::Base
  has_many :ordered_empanadas
  has_many :empanada_types, through: :ordered_empanadas
  belongs_to :eater, class_name: :User

  def total
    ordered_empanadas.sum(:quantity) * 4
  end
end
