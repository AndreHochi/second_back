class Link < ApplicationRecord
    belongs_to :before, class_name: 'Objective', foreign_key: :before_id
    belongs_to :after, class_name: 'Objective', foreign_key: :after_id
end
