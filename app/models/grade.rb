class Grade < ApplicationRecord
  belongs_to :person
  belongs_to :assignment
end
