class ReviewsController < ApplicationController
  # GET /reviews
  # GET /reviews.json

  def index
    @reviews = Review.all
    @reviews_list = @reviews.map{|r| r.id}

    #respond_to do |format|
     # format.html # index.html.erb
      #format.json { render json: @reviews }
      render json: {"reviews" => @reviews_list}
    #end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])

    #respond_to do |format|
     # format.html # show.html.erb
      #format.json { render json: @review }
      render json: @review
      @temp = {
        "charity-id" => @review.charity-id
        "author" => @review.author
        "title" => @review.title
        "description" => @review.description
        "name" => @review.name
        "rating" => @review.rating
        "statements" => [1,1,1,1,1,1,1,1,1,1]
        "orientation" => 1
        "liked-best" => [1,1,0,1,1,1,1,1,1,1,1,1,0,1,0]
        "liked-best-other" => ""
        "liked-least" => [0,0,0,0,0,1,0,0,0,0,0,0,0,0]
        "liked-least-other" => ""
        "suggestions" => "More funding needed to help build the charity"
        "why" => [1,0,0,0,0,0,0,1,1]
        "why-other"=>""
        "goals"=>1
        "comments"=>["author"=>@review.author, "comment"=>"We're glad you had a great time"]
      }
      render json: @temp
    #end
  end

  # GET /reviews/new
  # GET /reviews/new.json
  def new
    @review = Review.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(params[:review])

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render json: @review, status: :created, location: @review }
      else
        format.html { render action: "new" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reviews/1
  # PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to reviews_url }
      format.json { head :no_content }
    end
  end
end
