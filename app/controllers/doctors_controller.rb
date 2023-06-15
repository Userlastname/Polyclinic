class Doctors < ApplicationController
  def show
    @doctor = resource
  end

  private

  def collection
    Doctors.ordered
  end

  def resource
    collection.find(params[:id])
  end
end
