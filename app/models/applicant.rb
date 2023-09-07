class Applicant < ApplicationRecord
  validates :name, presence: true
  validates :street_address, presence: true 
  validates :city, presence: true 
  validates :state, presence: true 
  validates :zipcode, presence: true 
  validates :description, presence: true 
  validates :status, inclusion: { in: ['In Progress', 'Pending', 'Accepted', 'Rejected'] }

  has_many :pet_applicants
  has_many :pets, through: :pet_applicants
end