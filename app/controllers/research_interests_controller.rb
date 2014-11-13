class ResearchInterestsController < ApplicationController
  before_action :set_research_interest, only: [:show, :edit, :update, :destroy]

  # GET /research_interests
  # GET /research_interests.json
  def index
    @research_interests = ResearchInterest.all
  end

  # GET /research_interests/1
  # GET /research_interests/1.json
  def show
  end

  # GET /research_interests/new
  def new
    @research_interest = ResearchInterest.new
  end

  # GET /research_interests/1/edit
  def edit
  end

  # POST /research_interests
  # POST /research_interests.json
  def create
    @research_interest = ResearchInterest.new(research_interest_params)

    respond_to do |format|
      if @research_interest.save
        format.html { redirect_to @research_interest, notice: 'Research interest was successfully created.' }
        format.json { render :show, status: :created, location: @research_interest }
      else
        format.html { render :new }
        format.json { render json: @research_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_interests/1
  # PATCH/PUT /research_interests/1.json
  def update
    respond_to do |format|
      if @research_interest.update(research_interest_params)
        format.html { redirect_to @research_interest, notice: 'Research interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @research_interest }
      else
        format.html { render :edit }
        format.json { render json: @research_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_interests/1
  # DELETE /research_interests/1.json
  def destroy
    @research_interest.destroy
    respond_to do |format|
      format.html { redirect_to research_interests_url, notice: 'Research interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_interest
      @research_interest = ResearchInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def research_interest_params
      params.require(:research_interest).permit(:research_introduciton, :research_topic, :research_topic_en, :research_details, :research_details_en, :current_projects)
    end
end
