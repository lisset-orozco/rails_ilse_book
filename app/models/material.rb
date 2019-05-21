class Material < ApplicationRecord
  belongs_to :course
  validates :name, presence: true
  validates :description, presence: true
  validates :file, presence: true
end
