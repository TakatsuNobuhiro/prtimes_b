class ReleasesController < ApplicationController
  def index
    @releases = Release.all.page(params[:page]).per(10)
  end

  def show
  end

end
