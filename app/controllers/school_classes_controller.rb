class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(set_param(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    find_by_id
  end

  def edit
    find_by_id
  end

  def update
    find_by_id
    @school_class = SchoolClass.update(set_param(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private
    def set_param(*args)
      params.require(:school_class).permit(*args)
    end

    def find_by_id
      @school_class = SchoolClass.find_by(params[:id])
    end

end
