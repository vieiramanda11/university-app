class StudentsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "You have successfully sign up."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      flash[:success] = "Student was successfully updated."
      redirect_to student_path
    else
      render 'edit'
    end
  end

  private

    def student_params
      params.require(:student).permit(:name, :email)
    end

    def set_user
      @student = Student.find(params[:id])
    end
end
