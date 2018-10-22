class DancersBioController < ApplicationController
  before_action :authenticate_user!
  def index
    @dancers = Dancer_Bio.all
  end
 def new
    @dancer = Dancer_bio.new
    render :new
 end

 def create
    @dancer = Dancer_bio.new(dancerI)
    if @dancer.save
    # Handle success
        render :show
    else
      # Handle failure
    end
  end

  def show
    @dancer = Dancer_bio.all
  end

  def destroy
    @dancer = Dancer_bio.find(dancerID)
    @dancer.destroy
    redirect_to '/dancers_bio/show'
  end

  private

    def dancerI
      params.require(:dancer).permit!
    end
    def dancerID
      params.require(:id)
    end

    def search
      if params[:search]
        @dancers = Dancer_bio.search(params[:search]).order("created_at DESC")
      else
        @dancers = Dancer_bio.all.order("created_at DESC")
      end
    end
end
