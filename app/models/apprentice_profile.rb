class ApprenticeProfile < ApplicationRecord
  belongs_to :user
  has_many :licenses
  has_many :qualifications
  has_many :work_experiences
end
