class AppsController < ApplicationController

  def index
    @apps = App.all
    respond_to do |format|
      format.html
    end
  end

  def show
    @app = App.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @app = App.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @app = App.new(strong_params)
    respond_to do |format|
      if @app.save
        format.html { redirect_to apps_path, notice: "Successfully created app."}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @app = App.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def update
    @app = App.find(params[:id])
    respond_to do |format|
      if @app.update(strong_params)
        format.html { redirect_to apps_path, notice: "Successfully updated app."}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @app = App.find(params[:id])
    respond_to do |format|
      if @app.destroy
        format.html { redirect_to apps_path, notice: "Successfully deleted app."}
      else
        format.html { redirect_to apps_path, alert: "Failed to delete app." }
      end
    end
  end

  private

  def strong_params
    params.require(:app).permit(
      :blueprint_url,
      :title,
      :icon,
      :description,
      :readme,
      :website_url,
      :featured,
      :published)
    end

end
