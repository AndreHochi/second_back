class Objective < ApplicationRecord
    belongs_to :user
    has_many :links

    #I HAVE NO IDEA WHY THIS WORKS BUT IT WORKS

    has_many :befores_links, foreign_key: :after_id , class_name: "Link"
    has_many :afters_links, foreign_key: :before_id, class_name: "Link"

    has_many :befores, through: :befores_links
    has_many :afters, through: :afters_links

end