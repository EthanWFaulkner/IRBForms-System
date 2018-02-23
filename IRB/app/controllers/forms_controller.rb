class FormsController < ApplicationController
    
    def form_params
        params.require(:form).permit(:title, :submission_date, :result, :researcher)
    end
    
    def index
        @forms = Form.all
    end
    
    def new
        @form = Form.new
    end
    
    def create
        @form = Form.create!(form_params)
        #TODO Maybe add more form_elements here or move this into a method in the form elements controller
        @form.form_elements.build({:name => 'Project Title'})
        flash[:success] = "#{@form.title} was successfully created."
        redirect_to forms_path
    end
    
    def edit
        @form = Form.find params[:id]
    end
    
    def update
        @form = Form.find params[:id]
        @form.update_attributes!(form_params)
        flash[:success] = "#{@form.title} was successfully updated."
        redirect_to forms_path
    end
end
