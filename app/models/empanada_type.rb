class EmpanadaType < ActiveRecord::Base
  has_many :ordered_empanadas
  has_many :reviews
end
