class Author < ActiveRecord::Base
  validates :first_name, :last_name, :age, presence: true
  validates :first_name, :last_name, length: {in: 2...20}
  validates :age, numericality: {only_integer: true}
  has_many :posts, dependent: :destroy
end
