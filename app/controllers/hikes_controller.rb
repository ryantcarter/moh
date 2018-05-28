class HikesController < ApplicationController

  http_basic_authenticate_with name: ENV['http_auth_name'], password: ENV['http_auth_pass'], except: [:index, :show]

  def index
    @hikes = Hike.all.order('title')
    @north, @east, @daisetsuzan, @south, @west = [], [], [], [], []
    @hikes.select do |hike|
      @north << hike if hike.region == 'North'
      @east  << hike if hike.region == 'East'
      @daisetsuzan << hike if hike.region == 'Daisetsuzan'
      @south << hike if hike.region == 'South'
      @west  << hike if hike.region == 'West'
    end

    @regions = {North: @north, East: @east, Daisetsuzan: @daisetsuzan, South: @south, West: @west}
  end

  def show
    @hike = Hike.find(params[:slug])
  end

  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.new(hike_params)
    @hike.slug = @hike.title.parameterize
    if @hike.save
      flash[:success] = "Your hike was created"
      redirect_to hike_path(@hike)
    else
      flash[:alert] = "There was an error in creating the hike"
      render :new
    end
  end

  def edit
    @hike = Hike.find(params[:slug])
  end

  def update
    @hike = Hike.find(params[:slug])
    @hike.slug = @hike.title.parameterize
    if @hike.update_attributes(hike_params)
      flash[:success] = "Your hike was successfully updated"
      redirect_to hike_path(@hike)
    else
      flash[:alert] = "There was a problem updating your hike"
      render :edit
    end
  end

  private

    def hike_params
      params.require(:hike).permit(:title, :slug, :short_description, :image, :time, :distance, :climb, :descent, :difficulty, :danger, :region, :description, :topo_maps)
    end
end
