class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher, class_name: 'Person', foreign_key: 'person_id'

  validates :title, presence: true
  validates :title, length: {maximum: 30}
  validates :title, uniqueness: true
  validates :code, presence: true
  validates :code, length: {maximum: 30}
  validates :code, uniqueness: true
  validates :quota, presence: true
  validates :quota, numericality: true


  def to_s
    return title
  end
end
