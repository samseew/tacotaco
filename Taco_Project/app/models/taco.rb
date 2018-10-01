class Taco < ApplicationRecord
  has_many :taco_ingredients
  has_many :user_tacos
  has_many :ingredients, through: :taco_ingredients
  has_many :users, through: :user_tacos
  
  def compact
   delete_if { |k, v| v.nil? }
 end
end