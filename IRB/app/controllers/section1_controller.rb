class Section1Controller < ApplicationController
    
    def section1_params
        params.require(:section1).permit(:project_name, :approval_type, :expedited_or_exempt_review_just)
    end
    
    def index
        @form = Form.all
    end
    
    def new
        @section1text = Formtext.where({:section => 1, :human_form => false}).order("sub_section ASC").all
    end
    
    def create
        @form = Form.create!()
        @section1 = Section1.create!(section1_params)
        #byebug
        @form.section1 = @section1
        flash[:notice] = "#{@section1.project_name} was successfully created."
        redirect_to forms_path
    end
    
    def edit
        @section1text = Formtext.where({:section => 1, :human_form => false}).order("sub_section ASC").all
        #byebug
        @section1 = Section1.find params[:id]
    end
    
    def update
        @section1 = Section1.find params[:id]
        @section1.update_attributes!(section1_params)
        flash[:success] = "#{@section1.project_name} was successfully updated."
        redirect_to forms_path
    end
        
    
    
end
