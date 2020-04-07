class Question < ApplicationRecord
    include Gravatar

    has_many :answers
end
