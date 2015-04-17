class MedicationsController < ApplicationController

  def show
    @medication = Medication.find(params[:id])
    @perscriptions = @medication.perscriptions
  end

end
