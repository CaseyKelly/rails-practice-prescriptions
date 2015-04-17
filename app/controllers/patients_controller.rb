class PatientsController < ApplicationController

  def show
    @patient = Patient.find(params[:id])
    @perscriptions = @patient.perscriptions
  end

end
