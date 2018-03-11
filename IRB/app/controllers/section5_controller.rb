class Section5Controller < ApplicationController
    
    def section5_params
        params.require(:section5).permit(
        :sources_of_funding,
        :researcher_competency,
        :irb_comments
        )
    end
    
    def edit
        @section5text = Formtext.where({:section => 5, :human_form => false}).order("sub_section ASC").all
        #byebug
        @section5 = Section5.find params[:id]
    end
    
    def update
        @section5 = Section5.find params[:id]
        @section5.update_attributes!(section5_params)
        flash[:success] = "Section 5 was successfully updated."
        redirect_to forms_path
    end
    
end
