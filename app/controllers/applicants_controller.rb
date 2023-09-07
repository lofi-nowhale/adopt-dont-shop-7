class ApplicantsController < ApplicationController
  def index

  end
  
  def show
    @applicant = Applicant.find(params[:id])
    @pets = Pet.all
    # require 'pry';binding.pry
    if params[:name].present? 
      @results = @pets.search(params[:name]) 
      @search = params[:name]
      # redirect_to "/applicants/#{@applicant.id}"
    end
  end

  def new

  end

  def create
    applicant = Applicant.new(applicant_params)
    if applicant.save
      redirect_to "/applicants/#{applicant.id}"
    else
      flash[:alert] = "Application not created: Required information missing."
      render :new
    end
  end

  def update
    @pet_applicant = PetApplicant.find(params[:applicant_id])
    
    if pet_applicant.update(pet_applicant_params)
      redirect_to "/applicants/#{pet_applicant.applicant_id}"
    end
  end

  private
  def applicant_params
    params.permit(:id, :name, :street_address, :city, :state, :zipcode, :description, status: :InProgress)
  end
end