class Color < ApplicationRecord
  has_and_belongs_to_many :carros
end
