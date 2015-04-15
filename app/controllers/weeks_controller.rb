class WeeksController < ApplicationController
    def index
        @weeks = Week.all
    end

    def show
        @week = Week.find(params[:id])
    end

    def new
        @week = Week.new
    end

    def create
        @week = Week.new(params.require(:week).permit(:name, :date, :message, :this_week, :next_week, :office_hours))

        if @week.save 
            redirect_to weeks_path
        else
            render :week             #if can't save to database (something goes wrong), show us that new page again.
        end 
    end # end of create method

    def edit
        @week = Week.find(params[:id])
    end

    def update
          @week = Week.find(params[:id])

        if @week.update_attributes(params.require(:week).permit(:name, :date, :this_week, :next_week, :office_hours))
            redirect_to weeks_path
        else
            render :edit
        end
    end

    def destroy
    end

end

