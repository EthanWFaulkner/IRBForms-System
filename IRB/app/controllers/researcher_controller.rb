class ResearcherController < ApplicationController
    
    def researcher_params
        params.require(:researcher).permit(
        :name,
        :position,
        :email,
        :phone,
        :department,
        :researcher_type
        )
    end
    
    def showFormResearchers
        @form = Form.find_by_id(params[:form])
        #byebug
        @researchers = @form.researcher
        render :showformresearchers
    end
        
    
    def edit
        @researchertext = Formtext.where({:section => 6, :human_form => false}).order("sub_section ASC").all
        @researcher = Researcher.find params[:id]
        #byebug
    end
    
    def update
        @researcher = Researcher.find params[:id]
        @researcher.update_attributes!(researcher_params)
        flash[:success] = "Researchers were successfully updated."
        redirect_to forms_path
    end
    
end
