class ReleasesController < ApplicationController
  def index
    @releases = Release.all
  end

  def show
  end
end
