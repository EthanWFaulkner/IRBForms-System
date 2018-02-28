class FormsController < ApplicationController
    def form_params
        params.require(:form).permit(:project_name)
    end
    
    def index
        @forms = Form.all
    end
    
    def new
        @form = Form.new
    end
    
    def create
        @form = Form.create!(form_params)
        flash[:success] = "#{@form.project_name} was successfully created."
        redirect_to forms_path
    end
        
end
