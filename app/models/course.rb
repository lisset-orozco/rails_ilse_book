class Course < ApplicationRecord
  has_many :materials, dependent: :delete_all
  validates :name, presence: true
  validates :description, presence: true
end
