class NiftyAuthenticationsController < ApplicationController
  before_action :set_nifty_authentication, only: [:show, :edit, :update, :destroy]

  # GET /nifty_authentications
  # GET /nifty_authentications.json
  def index
    @nifty_authentications = NiftyAuthentication.all
  end

  # GET /nifty_authentications/1
  # GET /nifty_authentications/1.json
  def show
  end

  # GET /nifty_authentications/new
  def new
    @nifty_authentication = NiftyAuthentication.new
  end

  # GET /nifty_authentications/1/edit
  def edit
  end

  # POST /nifty_authentications
  # POST /nifty_authentications.json
  def create
    @nifty_authentication = NiftyAuthentication.new(nifty_authentication_params)

    respond_to do |format|
      if @nifty_authentication.save
        format.html { redirect_to @nifty_authentication, notice: 'Nifty authentication was successfully created.' }
        format.json { render :show, status: :created, location: @nifty_authentication }
      else
        format.html { render :new }
        format.json { render json: @nifty_authentication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nifty_authentications/1
  # PATCH/PUT /nifty_authentications/1.json
  def update
    respond_to do |format|
      if @nifty_authentication.update(nifty_authentication_params)
        format.html { redirect_to @nifty_authentication, notice: 'Nifty authentication was successfully updated.' }
        format.json { render :show, status: :ok, location: @nifty_authentication }
      else
        format.html { render :edit }
        format.json { render json: @nifty_authentication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nifty_authentications/1
  # DELETE /nifty_authentications/1.json
  def destroy
    @nifty_authentication.destroy
    respond_to do |format|
      format.html { redirect_to nifty_authentications_url, notice: 'Nifty authentication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nifty_authentication
      @nifty_authentication = NiftyAuthentication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nifty_authentication_params
      params[:nifty_authentication]
    end
end
