class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(set_param(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    find_by_id
  end

  def edit
    find_by_id
  end

  def update
    find_by_id
    @student = Student.update(set_param(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private
  def set_param(*args)
      params.require(:student).permit(*args)
  end

  def find_by_id
    @student = Student.find_by(params[:id])
  end

end
