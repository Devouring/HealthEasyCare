class ImcsController < ApplicationController
  # GET /imcs
  # GET /imcs.json
  def index
    @imcs = User.find(params[:id]).imcs

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imcs }
    end
  end

  # GET /imcs/1
  # GET /imcs/1.json
  def show
    @imc = Imc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imc }
    end
  end

  # GET /imcs/new
  # GET /imcs/new.json
  def new
    @imc = Imc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imc }
    end
  end

  # GET /imcs/1/edit
  def edit
    @imc = Imc.find(params[:id])
  end

  # POST /imcs
  # POST /imcs.json
  def create
    if (session[:user_id] == nil)
      params[:flash] = "something went wrong"
    end
    @imc = Imc.new(params[:imc])
    @imc.calcul_imc
    @imc.user = session[:user]
    @imc.save!
    redirect_to user_path(session[:user])
  end

  # PUT /imcs/1
  # PUT /imcs/1.json
  def update
    @imc = Imc.find(params[:id])

    respond_to do |format|
      if @imc.update_attributes(params[:imc])
        format.html { redirect_to @imc, notice: 'Imc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imcs/1
  # DELETE /imcs/1.json
  def destroy
    @imc = Imc.find(params[:id])
    @imc.destroy

    respond_to do |format|
      format.html { redirect_to imcs_url }
      format.json { head :no_content }
    end
  end
end
