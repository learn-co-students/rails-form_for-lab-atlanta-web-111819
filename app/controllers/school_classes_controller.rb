class SchoolClassesController < ApplicationController
    def create
        @class = SchoolClass.create(permit_school_class(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    def show
        @class = SchoolClass.find(params.require(:id))

    end

    def edit
        @class = SchoolClass.find(params.require(:id))
    end

    def update
        @class = SchoolClass.find(params.require(:id))
        @class.update(permit_school_class(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    def new
        @class = SchoolClass.new
        # @class.save
    end

    private

    def permit_school_class(*args)
        params.require(:school_class).permit(*args)
    end
end