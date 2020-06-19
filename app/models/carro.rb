class Carro < ApplicationRecord
  validates :placa, presence: true
  belongs_to :persona
end
