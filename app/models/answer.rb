class Answer < ApplicationRecord
    
    include Gravatar

    belongs_to :question

end
