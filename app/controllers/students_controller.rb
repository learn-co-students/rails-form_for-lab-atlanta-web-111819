class StudentsController < ApplicationController
   before_action :find, only: [:show, :edit, :update]

    def index 
      @students = Student.all
    end
  
    #THIS IS FOR FORM_FOR BASED
    def new 
        @student = Student.new
    end
    
    def create
        @student = Student.new(students_params)
        @student.save
        redirect_to student_path(@student)
    end 

    def show
    end

    def edit 
    end

    def update 
       @students.update(students_params)
       redirect_to student_path(@students)
    end

    private 

    def find
        @students = Student.find(params[:id])
    end

    def students_params
        params.require(:student).permit(:first_name, :last_name)
    #PERMITS WHAT CAN BE CHANGED.
    end
end
