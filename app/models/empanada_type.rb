class EmpanadaType < ApplicationRecord
  has_many :ordered_empanadas
  has_many :reviews
end
