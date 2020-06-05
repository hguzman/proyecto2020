class Persona < ApplicationRecord
  validates :cedula, :nombre, presence: true
  validates :cedula, uniqueness: true
  validates :nombre, length: { minimum: 2 }
end
