# id, content, favorites, marked_as_deleted, created_at, updated_at, user_id
#       t.string :content
#       t.integer :favorites
#       t.boolean :marked_as_deleted
#       t.timestamps null: false

class Wit < ActiveRecord::Base
  belongs_to(:user)
end
