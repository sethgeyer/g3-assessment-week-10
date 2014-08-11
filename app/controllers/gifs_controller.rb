class GifsController < ApplicationController

  def new
  @gif = Gif.new
  end

  def create
    @gif = Gif.new
    @gif.url = params[:gif][:url]
    @gif.title = params[:gif][:title]
    if @gif.save
      flash[:notice] = "gif created successfully"
      redirect_to root_path
    else
      render :new
    end
  end
end