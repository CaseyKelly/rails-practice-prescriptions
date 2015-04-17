class Perscription < ActiveRecord::Base

  belongs_to :user
  belongs_to :patient
  belongs_to :medication

  validates_presence_of :medication_id, :dosage, :schedule, :starts_on, :ends_on, :user_id, :patient_id

end
