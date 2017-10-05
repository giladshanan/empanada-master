class Order < ApplicationRecord
  has_many :ordered_empanadas
  has_many :empanada_types, through: :ordered_empanadas
  belongs_to :eater, class_name: :User

  def total
    ordered_empanadas.sum(:quantity) * 4
  end

  def count(type_id)
    ordered_empanadas.where(empanada_type_id: "type_id").sum(:quantity)
  end

  def type_sum(empanada_type_id)
    ordered_empanadas.where(empanada_type_id: empanada_type_id).sum(:quantity)
  end

  def self.adder(orders_array_by_date, empanada_type_id)
      orders_array_by_date.map { |order| order.type_sum(empanada_type_id) }.reduce(:+)
  end

  def self.count_all(orders_array_by_date)
    orders_array_by_date.map { |order| order.ordered_empanadas.sum(:quantity) }.reduce(:+)
  end
end
