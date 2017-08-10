class Cooker < ApplicationRecord

    has_many :eaters
    belongs_to :user

end