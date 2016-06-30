class Project < ActiveRecord::Base
  has_many :tasks
  validates :title,
  presence: { message: "入力してください" },
  length: { minimum: 3, message: "3文字以上で入力" }
end
