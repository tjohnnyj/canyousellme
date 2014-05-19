class PitchSubmissionsController < ApplicationController
  # GET /pitch_submissions
  # GET /pitch_submissions.json
  def index
    @pitch_submissions = PitchSubmission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pitch_submissions }
    end
  end

  # GET /pitch_submissions/1
  # GET /pitch_submissions/1.json
  def show
    @pitch_submission = PitchSubmission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pitch_submission }
    end
  end

  # GET /pitch_submissions/new
  # GET /pitch_submissions/new.json
  def new
    @pitch_submission = PitchSubmission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pitch_submission }
    end
  end

  # GET /pitch_submissions/1/edit
  def edit
    @pitch_submission = PitchSubmission.find(params[:id])
  end

  # POST /pitch_submissions
  # POST /pitch_submissions.json
  def create
    @pitch_submission = PitchSubmission.new(params[:pitch_submission])

    respond_to do |format|
      if @pitch_submission.save
        format.html { redirect_to @pitch_submission, notice: 'Pitch submission was successfully created.' }
        format.json { render json: @pitch_submission, status: :created, location: @pitch_submission }
      else
        format.html { render action: "new" }
        format.json { render json: @pitch_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pitch_submissions/1
  # PUT /pitch_submissions/1.json
  def update
    @pitch_submission = PitchSubmission.find(params[:id])

    respond_to do |format|
      if @pitch_submission.update_attributes(params[:pitch_submission])
        format.html { redirect_to @pitch_submission, notice: 'Pitch submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pitch_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitch_submissions/1
  # DELETE /pitch_submissions/1.json
  def destroy
    @pitch_submission = PitchSubmission.find(params[:id])
    @pitch_submission.destroy

    respond_to do |format|
      format.html { redirect_to pitch_submissions_url }
      format.json { head :no_content }
    end
  end
end
