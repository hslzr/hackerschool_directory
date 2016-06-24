class GenerationsController < ApplicationController

  def index
    @generations = Generation.all
  end

  def new
    @generation = Generation.new
  end

  def create
    @generation = Generation.new generation_params
    if @generation.save
      flash[:notice] = "Generación fue creada exitosamente"
      redirect_to generations_path
    else
      render :new
    end
  end

  def edit
    @generation = Generation.find(params[:id])
  end

  def update
    @generation = Generation.find(params[:id])
    if @generation.update_attributes(generation_params)
      flash[:notice] = "Generación actualizada exitosamente"
      redirect_to generations_path
    else
      render :edit
    end
  end

  def destroy
    @generation = Generation.find(params[:id])
    @generation.destroy
    flash[:notice] = "Generación eliminada exitosamente"
    redirect_to generations_path
  end

  private

  def generation_params
    params.require(:generation).permit(:name, :start_date)
  end
end
