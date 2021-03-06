class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates_presence_of :date, :rationale

  enum status: { submitted: 0, approved: 1, rejected: 2 }
end
