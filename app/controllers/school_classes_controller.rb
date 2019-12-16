class SchoolClassesController < ApplicationController
   before_action :find, only: [:show, :edit, :update]

    def index 
      @schoolclasses = SchoolClass.all
    end
  
    #THIS IS FOR FORM_FOR BASED
    def new 
        @school_class = SchoolClass.new
    end
    
    def create
        @schoolclass = SchoolClass.new(schoolclasses_params)
        @schoolclass.save
        redirect_to school_class_path(@schoolclass)
    end 

    def show
    end

    def edit 
    end

    def update 
       @schoolclasses.update(schoolclasses_params)
        redirect_to school_class_path
    end

    private 

    def find
        @schoolclasses = SchoolClass.find(params[:id])
    end

    def schoolclasses_params
        params.require(:school_class).permit(:title, :room_number)
    #PERMITS WHAT CAN BE CHANGED.
    end


end
