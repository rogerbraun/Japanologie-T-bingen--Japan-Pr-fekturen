class RegionsController < ApplicationController
  def index
    @regions = Region.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regions}
    end
  end

  def show
    @region = Region.find(params[:id])
    
    respond_to do |format|
      format.html
      format.xml {render :xml => @region}
    end
  end

end
