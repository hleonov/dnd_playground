class CharNote < ActiveRecord::Base
  belongs_to :character
  validates :content, presence: true #, length: { maximum: 250 }
end
