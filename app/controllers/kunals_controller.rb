class KunalsController < ApplicationController
  # GET /kunals
  # GET /kunals.json
  def index
    @kunals = Kunal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kunals }
    end
  end

  # GET /kunals/1
  # GET /kunals/1.json
  def show
    @kunal = Kunal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kunal }
    end
  end

  # GET /kunals/new
  # GET /kunals/new.json
  def new
    @kunal = Kunal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kunal }
    end
  end

  # GET /kunals/1/edit
  def edit
    @kunal = Kunal.find(params[:id])
  end

  # POST /kunals
  # POST /kunals.json
  def create
    @kunal = Kunal.new(params[:kunal])

    respond_to do |format|
      if @kunal.save
        format.html { redirect_to @kunal, notice: 'Kunal was successfully created.' }
        format.json { render json: @kunal, status: :created, location: @kunal }
      else
        format.html { render action: "new" }
        format.json { render json: @kunal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kunals/1
  # PUT /kunals/1.json
  def update
    @kunal = Kunal.find(params[:id])

    respond_to do |format|
      if @kunal.update_attributes(params[:kunal])
        format.html { redirect_to @kunal, notice: 'Kunal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kunal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kunals/1
  # DELETE /kunals/1.json
  def destroy
    @kunal = Kunal.find(params[:id])
    @kunal.destroy

    respond_to do |format|
      format.html { redirect_to kunals_url }
      format.json { head :no_content }
    end
  end
end
