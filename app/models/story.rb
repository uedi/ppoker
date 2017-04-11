class Story < ApplicationRecord
  self.table_name = "stories"
  
  belongs_to :team

end
