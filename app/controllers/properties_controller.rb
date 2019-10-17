class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times {@property.closest_stations.build}
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path, notice: "登録完了"
    else
      render :new, notice: "登録ができませんでした。"
    end
  end




  def show
  end




  def edit
    if @property.closest_stations.empty?
      2.times{ @property.closest_stations.build }
    else @property.closest_stations == 1
      @property.closest_stations.build
    end
  end


  def update
    if @property.update(property_params)
      redirect_to properties_path, notice:"更新完了"
    else
      render :edit
    end
  end



  def destroy
  @property.destroy
  redirect_to properties_path, notice: "削除完了"
end



  private

  def property_params
    params.require(:property).permit(
      :name,
      :rent,
      :address,
      :remarks_column,
      :age,
      closest_stations_attributes: [
        :route,
        :station,
        :on_foot,
        :id,
        :property_id]
      )
  end


  
  def set_property
    @property = Property.find(params[:id])
  end
end
