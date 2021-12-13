class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  private

  def list_params
    params.require(:bookmark).permit(:name)
  end
end
end
