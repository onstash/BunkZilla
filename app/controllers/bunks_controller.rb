class BunksController < ApplicationController
  load_and_authorize_resource

  before_action :set_bunk, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js
  def index
    @bunks = Bunk.all
    respond_with(@bunks)
  end

  def show
  end

  def new
    @bunk = Bunk.new
    respond_with(@bunk)
  end

  def edit
    respond_with @bunk do |format|
      format.html { redirect_to bunks_path }
    end
  end

  def create
    @bunk = Bunk.new(bunk_params)
    @bunk.user = current_user
    @bunk.save
    respond_with @bunk do |format|
      format.html { redirect_to bunks_path }
    end
  end

  def update
    @bunk.update(bunk_params)
    respond_with @bunk do |format|
      format.html { redirect_to bunks_path }
    end
  end

  def destroy
    @bunk.destroy
    respond_with(@bunk)
  end

  private
    def set_bunk
      @bunk = Bunk.find(params[:id])
    end

    def bunk_params
      params.require(:bunk).permit(:subjectname, :bunk, :total, :comments)
    end
end
