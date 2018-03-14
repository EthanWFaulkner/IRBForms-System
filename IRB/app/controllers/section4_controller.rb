class Section4Controller < ApplicationController
    
    def section4_params
        params.require(:section4).permit(
        :data_collection_proc,
        :location_organization_data_collection,
        :data_to_be_collected,
        :period_of_data_collection,
        :prospective_or_retrospective,
        :anonymous_data,
        :data_collection_instruments,
        :data_stored_how,
        :length_of_data_retention,
        :who_has_data_access,
        :analysis_methods,
        :results_desseminated
        )
    end
    
    def edit
        @section4text = Formtext.where({:section => 4, :human_form => true}).order("sub_section ASC").all
        #byebug
        @section4 = Section4.find params[:id]
    end
    
    def update
        @section4 = Section4.find params[:id]
        @section4.update_attributes!(section4_params)
        flash[:success] = "Section 4 was successfully updated."
        redirect_to forms_path
    end
    
end
