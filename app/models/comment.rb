class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  validates :nickname,
  presence: { message: "入力してください" },
  length: { minimum: 2, message: "2文字以上で入力してください" }
  validates :comment,
  presence: { message: "入力してください" },
  length: { minimum: 2, message: "2文字以上で入力してください" }
end
