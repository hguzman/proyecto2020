class Carro < ApplicationRecord
  validates :placa, presence: true
  belongs_to :persona
  has_and_belongs_to_many :colores
end
