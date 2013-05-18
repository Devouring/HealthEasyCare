class VaccinsController < ApplicationController
  # GET /vaccins
  # GET /vaccins.json
  def index
    @vaccins = Vaccin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vaccins }
    end
  end

  # GET /vaccins/1
  # GET /vaccins/1.json
  def show
    @vaccin = Vaccin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vaccin }
    end
  end

  # GET /vaccins/new
  # GET /vaccins/new.json
  def new
    @vaccin = Vaccin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vaccin }
    end
  end

  # GET /vaccins/1/edit
  def edit
    @vaccin = Vaccin.find(params[:id])
  end

  # POST /vaccins
  # POST /vaccins.json
  def create
    if (session[:user_id] == nil)
      params[:flash] = "something went wrong"
    end
    @vaccin = Vaccin.new(params[:vaccin])
    @vaccin.user = session[:user]
    @vaccin.save!
    redirect_to show_vaccin_user_path(session[:user])
  end

  # PUT /vaccins/1
  # PUT /vaccins/1.json
  def update
    @vaccin = Vaccin.find(params[:id])

    respond_to do |format|
      if @vaccin.update_attributes(params[:vaccin])
        format.html { redirect_to @vaccin, notice: 'Vaccin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vaccin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccins/1
  # DELETE /vaccins/1.json
  def destroy
    @vaccin = Vaccin.find(params[:id])
    @vaccin.destroy
    redirect_to show_vaccin_user_path(session[:user])
  end
end
