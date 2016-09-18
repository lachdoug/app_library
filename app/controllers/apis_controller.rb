class ApisController < ApplicationController

  before_action :set_request_format_to_json

  def apps
    @apps = App.published
    render 'index_apps'
  end

  def unpublished_apps
    @apps = App.unpublished
    render 'index_apps'
  end

  protected

  def set_request_format_to_json
    request.format = :json
  end

end
