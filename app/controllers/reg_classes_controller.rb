class RegClassesController < ApplicationController
  before_action :set_reg_class, only: %i[ show edit update destroy ]

  # GET /reg_classes or /reg_classes.json
  def index
    # @reg_classes = RegClass.includes(:avail_course).where(user_id: current_user.id)
    @reg_classes = RegClass.all
  end

  def events
    reg_classes = RegClass.includes(:avail_course).where(user_id: current_user.id)
    events = []

    day_mappings = {
      'M' => 1,
      'T' => 2,
      'W' => 3,
      'R' => 4,
      'F' => 5,
    }

    reg_classes.each do |reg_class|
      avail_course = reg_class.avail_course
      days_of_week = avail_course.days.chars.map {|day| day_mappings[day]}

      current_date = avail_course.date_start

      while current_date <= avail_course.date_end
        if days_of_week.include?(current_date.wday)
          events << {
            title: avail_course.course.title,
            start: current_date.to_s + 'T' + avail_course.time_start.strftime("%H:%M:%S"),
            end: current_date.to_s + 'T' + avail_course.time_end.strftime("%H:%M:%S")
          }
        end
        current_date += 1.day
      end
    end


    render json: events
  end

  # GET /reg_classes/1 or /reg_classes/1.json
  def show
  end

  # GET /reg_classes/new
  def new
    @reg_class = RegClass.new
  end

  # GET /reg_classes/1/edit
  def edit
  end

  # POST /reg_classes or /reg_classes.json
  def create
    @reg_class = RegClass.new(reg_class_params)

    respond_to do |format|
      if @reg_class.save
        format.html { redirect_to reg_class_url(@reg_class), notice: "Registered class was successfully added." }
        format.json { render :show, status: :created, location: @reg_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reg_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reg_classes/1 or /reg_classes/1.json
  def update
    respond_to do |format|
      if @reg_class.update(reg_class_params)
        format.html { redirect_to reg_class_url(@reg_class), notice: "Registered class was successfully updated." }
        format.json { render :show, status: :ok, location: @reg_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reg_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_classes/1 or /reg_classes/1.json
  def destroy
    @reg_class.destroy!

    respond_to do |format|
      format.html { redirect_to reg_classes_url, notice: "Registered class was successfully removed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_class
      @reg_class = RegClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reg_class_params
      params.fetch(:reg_class, {}).permit(:user_id, :avail_course_id, :registration_time)
    end
end
