class StudentsController < ApplicationController

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
    redirect_to edit_student_path(@student)
  end

  def new
    @student = Student.new
    redirect_to new_student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
    redirect_to student_path(@student)
  end

  private do

    def params
      

end
