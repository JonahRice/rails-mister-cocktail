class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: {message: "Fuck off!"}
  def invalidate_name
    errors.messages[:name] << "Fuck off!"

  end

end
