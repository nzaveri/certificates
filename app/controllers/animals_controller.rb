class AnimalsController < ApplicationController
  def index
    @animals = Animal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @animals }
    end
  end

  def new
    @animal = Animal.new
    @animal.certificate_id = params[:id]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @animal }
    end
  end

  def create
    @animal = Animal.new(params[:animal])
    @animal.save
    redirect_to :controller => "certificates", :action => "index"
  end

  def show
    @animal = Animal.find(params[:id])  

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @animal }
    end
  end

  def show_by_certificate_id
    @animals = Animal.find(:all, :conditions => ["certificate_id = ?", params[:id]])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @animals }
    end
  end


end
