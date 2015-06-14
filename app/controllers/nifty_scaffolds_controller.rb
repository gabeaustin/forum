class NiftyScaffoldsController < ApplicationController
  before_action :set_nifty_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /nifty_scaffolds
  # GET /nifty_scaffolds.json
  def index
    @nifty_scaffolds = NiftyScaffold.all
  end

  # GET /nifty_scaffolds/1
  # GET /nifty_scaffolds/1.json
  def show
  end

  # GET /nifty_scaffolds/new
  def new
    @nifty_scaffold = NiftyScaffold.new
  end

  # GET /nifty_scaffolds/1/edit
  def edit
  end

  # POST /nifty_scaffolds
  # POST /nifty_scaffolds.json
  def create
    @nifty_scaffold = NiftyScaffold.new(nifty_scaffold_params)

    respond_to do |format|
      if @nifty_scaffold.save
        format.html { redirect_to @nifty_scaffold, notice: 'Nifty scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @nifty_scaffold }
      else
        format.html { render :new }
        format.json { render json: @nifty_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nifty_scaffolds/1
  # PATCH/PUT /nifty_scaffolds/1.json
  def update
    respond_to do |format|
      if @nifty_scaffold.update(nifty_scaffold_params)
        format.html { redirect_to @nifty_scaffold, notice: 'Nifty scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @nifty_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @nifty_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nifty_scaffolds/1
  # DELETE /nifty_scaffolds/1.json
  def destroy
    @nifty_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to nifty_scaffolds_url, notice: 'Nifty scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nifty_scaffold
      @nifty_scaffold = NiftyScaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nifty_scaffold_params
      params.require(:nifty_scaffold).permit(:forum, :name, :description)
    end
end
