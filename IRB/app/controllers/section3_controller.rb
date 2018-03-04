class Section3Controller < ApplicationController
    
    def section3_params
        params.require(:section3).permit(
        :intended_population_characteristics,
        :faulkner_students_recruited,
        :faulkner_employees_recruited,
        :faulkner_not_recruited,
        :min_participants,
        :max_participants,
        :vulnerable_rationale,
        :protections_in_place,
        :descr_of_all_risk,
        :descr_of_comp,
        :descr_selection_proc,
        :assure_informed_consent
        )
    end
    
    def edit
        @section3text = Formtext.where({:section => 3, :human_form => true}).order("sub_section ASC").all
        #byebug
        @section3 = Section3.find params[:id]
    end
    
    def update
        @section3 = Section3.find params[:id]
        @section3.update_attributes!(section3_params)
        flash[:success] = "Section 2 was successfully updated."
        redirect_to forms_path
    end
end
