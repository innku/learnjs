class PersonsController < ApplicationController
  respond_to :json
  
  def create
    @person = Person.new(params[:person])
    respond_with @person
  end
  
  def destroy
    @person = Person.find(params[:id])
    respond_with @person
  end
  
end
