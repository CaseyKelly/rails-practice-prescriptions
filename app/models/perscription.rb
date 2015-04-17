class Perscription < ActiveRecord::Base

  belongs_to :user
  belongs_to :patient
  belongs_to :medication

  validates_presence_of :medication_id, :dosage, :schedule, :starts_on, :ends_on, :user_id, :patient_id
  validate :dosage_starts_with_number, :end_date_is_after_start_date

  def dosage_starts_with_number
    if dosage[0].to_i.to_s != dosage[0]
      errors.add(:dosage, "must start with a number")
    end
  end

  def end_date_is_after_start_date
    if ends_on < starts_on
      errors.add(:end_date, "must be after the start date")
    end
  end

end
