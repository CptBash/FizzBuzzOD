class RubyBuzzsController < ApplicationController
  before_action :set_ruby_buzz, only: [:show, :edit, :update, :destroy]

  # GET /ruby_buzzs
  # GET /ruby_buzzs.json
  def index
    @ruby_buzzs = RubyBuzz.all
  end

  # GET /ruby_buzzs/1
  # GET /ruby_buzzs/1.json
  def show
  end

  # GET /ruby_buzzs/new
  def new
    @ruby_buzz = RubyBuzz.new
  end

  # GET /ruby_buzzs/1/edit
  def edit
  end

  # POST /ruby_buzzs
  # POST /ruby_buzzs.json
  def create
    @ruby_buzz = RubyBuzz.new(ruby_buzz_params)

    respond_to do |format|
      if @ruby_buzz.save
        format.html { redirect_to @ruby_buzz, notice: 'Ruby buzz was successfully created.' }
        format.json { render :show, status: :created, location: @ruby_buzz }
      else
        format.html { render :new }
        format.json { render json: @ruby_buzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby_buzzs/1
  # PATCH/PUT /ruby_buzzs/1.json
  def update
    respond_to do |format|
      if @ruby_buzz.update(ruby_buzz_params)
        format.html { redirect_to @ruby_buzz, notice: 'Ruby buzz was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruby_buzz }
      else
        format.html { render :edit }
        format.json { render json: @ruby_buzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_buzzs/1
  # DELETE /ruby_buzzs/1.json
  def destroy
    @ruby_buzz.destroy
    respond_to do |format|
      format.html { redirect_to ruby_buzzs_url, notice: 'Ruby buzz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby_buzz
      @ruby_buzz = RubyBuzz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruby_buzz_params
      params.require(:ruby_buzz).permit(:question, :answer, :submission)
    end
end
