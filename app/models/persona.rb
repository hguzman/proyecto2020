class Persona < ApplicationRecord
  validates :cedula, :nombre, presence: true
  validates :cedula, uniqueness: true
  validates :nombre, length: { minimum: 2 }

  has_many :addresses
  has_many :telefonos
  has_many :carros
end
