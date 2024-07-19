class AvailCoursesController < ApplicationController
  before_action :set_avail_course, only: %i[ show edit update destroy ]
  # <!-- belongs_to :professor, class_name: 'Professor', foreign_key: 'professor_id', optional: true -->

  # GET /avail_courses or /avail_courses.json
  def index
    @avail_courses = AvailCourse.all
  end

  # GET /avail_courses/1 or /avail_courses/1.json
  def show
  end

  # GET /avail_courses/new
  def new
    @avail_course = AvailCourse.new
  end

  # GET /avail_courses/1/edit
  def edit
  end

  # POST /avail_courses or /avail_courses.json
  def create
    @avail_course = AvailCourse.new(avail_course_params)

    respond_to do |format|
      if @avail_course.save
        format.html { redirect_to avail_course_url(@avail_course), notice: "Avail course was successfully created." }
        format.json { render :show, status: :created, location: @avail_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avail_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avail_courses/1 or /avail_courses/1.json
  def update
    respond_to do |format|
      if @avail_course.update(avail_course_params)
        format.html { redirect_to avail_course_url(@avail_course), notice: "Avail course was successfully updated." }
        format.json { render :show, status: :ok, location: @avail_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avail_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avail_courses/1 or /avail_courses/1.json
  def destroy
    @avail_course.destroy!

    respond_to do |format|
      format.html { redirect_to avail_courses_url, notice: "Avail course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avail_course
      @avail_course = AvailCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avail_course_params
      params.fetch(:avail_course, {})
    end
end
