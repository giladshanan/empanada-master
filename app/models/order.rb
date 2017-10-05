class Order < ActiveRecord::Base
  has_many :ordered_empanadas
  has_many :empanada_types, through: :ordered_empanadas
  belongs_to :eater, class_name: :User

  def total
    ordered_empanadas.sum(:quantity) * 4
  end

  def count(type_id)
    ordered_empanadas.where(empanada_type_id: "type_id").sum(:quantity)
  end

  def count_all
    output_hash = {}
    ordered_empanadas.each do |ordered_empanada|
      if output_hash[ordered_empanada.name]
        output_hash[ordered_empanada.name] += ordered_empanada.quantity
      else
        output_hash[ordered_empanada.name] = ordered_empanada.quantity
      end
    end
    output_hash
  end

  def type_sum(empanada_type_id)
    ordered_empanadas.where(empanada_type_id: empanada_type_id).sum(:quantity)
  end

  def self.adder(orders_array_by_date, empanada_type_id)
      orders_array_by_date.map { |order| order.type_sum(empanada_type_id) }.reduce(:+)
  end

end
