class StudentsController < ApplicationController
    def create
        @student = Student.create(permit_student(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find(params.require(:id))
    end

    def update
        @student = Student.find(params.require(:id))
        @student.update(permit_student(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find(params.require(:id))
        
    end

    private

    def permit_student(*args)
        params.require(:student).permit(*args)
    end
end