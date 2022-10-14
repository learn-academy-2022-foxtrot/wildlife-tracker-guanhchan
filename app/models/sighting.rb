class Sighting < ApplicationRecord
    belongs_to :animail, optional: true
end
