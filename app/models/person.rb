class Person < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :first_name, presence: true
  validates :first_name, length: {maximum: 30}
  validates :last_name, presence: true
  validates :last_name, length: {maximum: 30}
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, length: {maximum: 50}
  validates :email, confirmation: true
  #validates :email_confirmation, presence: true
  validates :email, format: { with: /.+@[a-z]+[.][a-z]+/, message: "only format username@server.domain" }

  def to_s
    return first_name + ' ' + last_name
  end
end
