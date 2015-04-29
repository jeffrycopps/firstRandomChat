class LandingPageController < ApplicationController
  def index
    #@landing_pages = LandingPage.all
  end
  def show
    @landing_page = LandingPage.find(params[:id])
  end
  def new
    #@landing_page = LandingPage.new
  end
  def create
    @landing_page = landingpage.create(params[:landing_page])
  end
end
