class NewIssuesController < ApplicationController
  before_action :set_new_issue, only: [:show, :edit, :update, :destroy]

  # GET /new_issues
  # GET /new_issues.json
  def index
    @new_issues = NewIssue
    @new_issues = NewIssue.order(params[:sort]) if params[:sort]
    @new_issues = @new_issues.all

    respond_to do |format|
      format.html #index.html.erb
      format.json { render json: @new_issues }
      format.xml {render xml: @new_issues }
      format.rss # index.rss.builder
      format.csv # index.csv.erb
    end
  end

  # GET /new_issues/1
  # GET /new_issues/1.json
  def show

  end

  # GET /new_issues/new
  def new
    @new_issue = NewIssue.new
  end

  # GET /new_issues/1/edit
  def edit
  end

  # POST /new_issues
  # POST /new_issues.json
  def create
    @new_issue = NewIssue.new(new_issue_params)

    respond_to do |format|
      if @new_issue.save
        format.html { redirect_to @new_issue, notice: 'New issue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @new_issue }
      else
        format.html { render action: 'new' }
        format.json { render json: @new_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_issues/1
  # PATCH/PUT /new_issues/1.json
  def update
    respond_to do |format|
      if @new_issue.update(new_issue_params)
        format.html { redirect_to @new_issue, notice: 'New issue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @new_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_issues/1
  # DELETE /new_issues/1.json
  def destroy
    @new_issue.destroy
    respond_to do |format|
      format.html { redirect_to new_issues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_issue
      @new_issue = NewIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_issue_params
      params.require(:new_issue).permit(:title, :description, :no_followers)
    end
end
