class PlantsRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :plants }
end
