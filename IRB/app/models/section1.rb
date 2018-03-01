class Section1 < ActiveRecord::Base
    belongs_to :form
    STATUS = [['Full Board', true], ['Inactive', false]]
end
