class Character < ActiveRecord::Base
  has_many :char_notes
  validates :name, presence: true
  validates :age, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :description, presence: true

end
