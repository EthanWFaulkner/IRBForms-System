class FormElementsController < ApplicationController
    
    def edit
        @form_elements = FormElement.find params[:id]
    end
end
