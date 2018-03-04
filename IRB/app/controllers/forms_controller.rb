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
    
    def generateForm
        #byebug
        if params[:human] == "true"
            @form = Form.create!({:human => true})
            @section1 = Section1.create!()
            @form.section1 = @section1
            @form.section2 = Section2.create!()
            @form.section3 = Section3.create!()
            @form.section4 = Section4.create!()
            @form.section5 = Section5.create!()
        else
            @form = Form.create!({:human => false})
            @section1 = Section1.create!()
            @form.section1 = @section1
            @form.section2 = Section2.create!()
            @form.section3animal = Section3animal.create!()
            @form.section4 = Section4.create!()
            @form.section5 = Section5.create!()
        end
        
        flash[:notice] = "#{@section1.project_name} was successfully created."
        redirect_to edit_section1_path(@section1)
    end
    
    def create
        @form = Form.create!(form_params)
        flash[:success] = "#{@form.project_name} was successfully created."
        redirect_to forms_path
    end
        
end
