class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    # validate :is_clickbait?

    # def is_clickbait?
    #     # unless title inlcudes one of the following, throw error
    #     unless title.method
    #         errors.add(:title, "not sufficiently clickbait-y")
    #     end
    # end

end
