class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])

    # note: below could be iffy
    if @link.save
      redirect_to @link
    else
      render action: 'new'
    end
    
  end

  def show
    @link = Link.find(params[:id])
    
  end

end
