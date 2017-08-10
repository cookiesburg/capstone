class Eater < ApplicationRecord

    belongs_to :cooker, optional: true
    belongs_to :user

end