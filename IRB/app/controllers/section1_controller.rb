class Section1Controller < ApplicationController
    
    def new
        @form = Form.new
        @section1 = @form.create_section1()
    end
    
end
