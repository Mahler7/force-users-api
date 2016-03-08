class Api::V1::ForceUsersController < ApplicationController

  def index

    @force_users = ForceUser.all

  end

  def create

    @force_user = ForceUser.new(name: params[:name], title: params[:title], lightsaber_color: params[:lightsaber_color], affiliation: params[:affiliation], location: params[:location], dark_or_light: params[:dark_or_light])

    if @force_user.save
      render :show
    else
      render json: { errors: @force_user.errors.full_messages }, status: 422
    end


  end

  def show

    @force_user = ForceUser.find(params[:id])

  end

  def update

    @force_user = ForceUser.find(params[:id])

    @force_user.update(
      name: params[:name] || @force_user.name, 
      title: params[:title] || @force_user.title, 
      lightsaber_color: params[:lightsaber_color] || @force_user.lightsaber_color,
      affiliation: params[:affiliation] || @force_user.affiliation, 
      location: params[:location] || @force_user.location, 
      dark_or_light: params[:dark_or_light] || @force_user.dark_or_light)

    render :show

  end

  def destroy

    @force_user = ForceUser.find(params[:id])
    @force_user.destroy

    render json: { message: "Employee Destroyed" }

  end

end
