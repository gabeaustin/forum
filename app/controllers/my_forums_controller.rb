class MyForumsController < ApplicationController
  before_action :set_my_forum, only: [:show, :edit, :update, :destroy]

  # GET /my_forums
  # GET /my_forums.json
  def index
    @my_forums = MyForum.all
  end

  # GET /my_forums/1
  # GET /my_forums/1.json
  def show
  end

  # GET /my_forums/new
  def new
    @my_forum = MyForum.new
  end

  # GET /my_forums/1/edit
  def edit
  end

  # POST /my_forums
  # POST /my_forums.json
  def create
    @my_forum = MyForum.new(my_forum_params)

    respond_to do |format|
      if @my_forum.save
        format.html { redirect_to @my_forum, notice: 'My forum was successfully created.' }
        format.json { render :show, status: :created, location: @my_forum }
      else
        format.html { render :new }
        format.json { render json: @my_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_forums/1
  # PATCH/PUT /my_forums/1.json
  def update
    respond_to do |format|
      if @my_forum.update(my_forum_params)
        format.html { redirect_to @my_forum, notice: 'My forum was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_forum }
      else
        format.html { render :edit }
        format.json { render json: @my_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_forums/1
  # DELETE /my_forums/1.json
  def destroy
    @my_forum.destroy
    respond_to do |format|
      format.html { redirect_to my_forums_url, notice: 'My forum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_forum
      @my_forum = MyForum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_forum_params
      params.require(:my_forum).permit(:name, :description)
    end
end
