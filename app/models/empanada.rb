class Empanada < ActiveRecord::Base
  belongs_to :empanada_type
  belongs_to :order
  delegate :name, to: :empanada_type

end
