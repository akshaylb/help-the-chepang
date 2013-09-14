class DonorsController < ApplicationController
  def new
  	@donor=Donor.new
  end
  def create
    @donor = Donor.new(donor_params)    # Not the final implementation!
    if @donor.save
      redirect_to donors_path
    else
      render 'new'
    end
  end

  def index
    @donors=Donor.paginate(page: params[:page], per_page: 10)
  end

  private

    def donor_params
      params.require(:donor).permit(:name, :link)
    end
end

# order: 'name ASC'