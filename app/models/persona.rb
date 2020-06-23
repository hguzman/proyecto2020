class Persona < ApplicationRecord
  validates :cedula, :nombre, presence: true
  validates :cedula, uniqueness: true
  validates :nombre, length: { minimum: 2 }

  has_many :addresses, dependent: :destroy
  has_many :telefonos, dependent: :destroy
  has_many :carros, dependent: :destroy

  has_and_belongs_to_many :empresas

  accepts_nested_attributes_for :telefonos
end
