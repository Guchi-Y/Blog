class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text        :text
      t.integer     :user_id
      t.timestamps  null:true
    end
  end
end
