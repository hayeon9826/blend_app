class DonationsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_object, only: [:show, :success]

  def index
    @donations = Donation.all
  end

  def new
    @donation = Donation.new
    @lecture = Lecture.find(params[:lecture_id])
  end

  def create
    @donation = Donation.create(donation_params)
    point = params[:donation][:point].to_i
    current_user.points.first.decrement!(:point, point)
    current_user.increment!(:donation_total, point)
    redirect_to success_donations_path(id: @donation)
  end

  # def edit
  #   @donation = get_donation
  #   @donation.update(lecture_id: params[:id])
  #   @lecture = Lecture.find(params[:id])
  # end
  #
  # def update
  #   @donation.update(donation_params)
  #   current_user.points.first.decrement!(:point, params[:point])
  #   redirect_to donation_path(@donation)
  # end

  def show
    @product = Product.find(@order.product_id)
  end

  def success
  end


  private

  def load_object
    @donation = Donation.find(params[:id])
  end

  def donation_params
    params.require(:donation).permit(:lecture_id, :user_id, :point)
  end

end
