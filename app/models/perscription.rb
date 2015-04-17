class Perscription < ActiveRecord::Base

  belongs_to :user
  belongs_to :patient
  belongs_to :medication

  validates_presence_of :medication_id, :dosage, :schedule, :starts_on, :ends_on, :user_id, :patient_id
  validate :dosage_starts_with_number

  def dosage_starts_with_number
    if dosage.present? && dosage[0].class != Fixnum
      errors.add(:dosage, "must start with a number")
    end
  end

end
