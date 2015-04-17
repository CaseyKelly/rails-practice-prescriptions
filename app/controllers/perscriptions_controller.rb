class PerscriptionsController < ApplicationController

  def new
    @perscription = Perscription.new
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @perscription = Perscription.new(perscription_params)
    @patient = Patient.find(params[:patient_id])
    @perscription.patient_id = @patient.id
    @perscription.user_id = @current_user.id
    if @perscription.save
      redirect_to patient_path(@patient), notice: "Your perscription has been created."
    else
      render :new
    end
  end

  private

  def perscription_params
    params.require(:perscription).permit(:medication_id, :dosage, :schedule, :starts_on, :ends_on, :patient_id, :user_id)
  end

end
