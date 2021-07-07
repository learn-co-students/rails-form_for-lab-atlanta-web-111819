class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all 
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(post_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def show
        select_school_classes
    end

    def edit
        select_school_classes
    end

    def update
        select_school_classes
        @school_class.update(post_params(:title, :room_number))
        redirect_to school_class_path(@school_class)

    end

    private

    def select_school_classes
        @school_class = SchoolClass.find(params[:id])
    end

    def post_params(*args)
        params.require(:school_class).permit(*args)
    end
end
