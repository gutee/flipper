class FlipsController < ApplicationController
  # GET /flips
  # GET /flips.json
  def index
    @flips = Flip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flips }
    end
  end

  # GET /flips/1
  # GET /flips/1.json
  def show
    @flip = Flip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flip }
    end
  end

  # GET /flips/new
  # GET /flips/new.json
  def new
    @flip = Flip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flip }
    end
  end

  # GET /flips/1/edit
  def edit
    @flip = Flip.find(params[:id])
  end

  # POST /flips
  # POST /flips.json
  def create
    @flip = Flip.new(params[:flip])
    @flip.user = current_user

    respond_to do |format|
      if @flip.save
        format.html { redirect_to @flip, notice: 'Flip was successfully created.' }
        format.json { render json: @flip, status: :created, location: @flip }
      else
        format.html { render action: "new" }
        format.json { render json: @flip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flips/1
  # PUT /flips/1.json
  def update
    @flip = Flip.find(params[:id])

    respond_to do |format|
      if @flip.update_attributes(params[:flip])
        format.html { redirect_to @flip, notice: 'Flip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flips/1
  # DELETE /flips/1.json
  def destroy
    @flip = Flip.find(params[:id])
    @flip.destroy

    respond_to do |format|
      format.html { redirect_to flips_url }
      format.json { head :no_content }
    end
  end
end
