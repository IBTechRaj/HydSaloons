class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :saloonspa 
  belongs_to :client

  validates :apptdate, presence: true, inclusion: { in: (Date.today+1..Date.today+7.days) }
  validates_time :appttime, on_or_after: '6:00am', on_or_before: '10:00am'
  validates :service, presence: true
end
