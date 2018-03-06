class Section4animalController < ApplicationController
    
    def section4animal_params
        params.require(:section4animal).permit(
        :what_data,
        :location_organization_data_collection,
        :procedures_of_data_collection,
        :period_of_data_collection,
        :data_collection_instruments,
        :data_stored_how,
        :length_of_data_retention,
        :who_has_data_access,
        :analysis_methods,
        :results_desseminated
        )
    end
    
    def edit
        @section4animaltext = Formtext.where({:section => 4, :human_form => false}).order("sub_section ASC").all
        #byebug
        @section4animal = Section4animal.find params[:id]
    end
    
    def update
        @section4animal = Section4animal.find params[:id]
        @section4animal.update_attributes!(section4_params)
        flash[:success] = "Section 3 was successfully updated."
        redirect_to forms_path
    end
    
end
