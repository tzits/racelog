class RacesController < ApplicationController
  def create
    @race = Race.new(race_params)
    if @race.valid?
      @race.save
    else

    end

  end

  def show
    @race = Race.find(params[:id])
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    @race = Race.find(params[:id])
    if @race.update(race_params)
      redirect_to :back
    else
      redirect_to :back
      # flash[:error] = @user.errors.full_messages.join(". ")
    end
  end

  def destroy
    @race = Race.find(params[:id])
    if @race.destroy
      redirect_to root_path
    else
      explode
    end
  end

  private

  def race_params
    params.require(:race).permit(:name, :distance)
  end
end
