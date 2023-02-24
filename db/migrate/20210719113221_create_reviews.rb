class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.integer :game_id # this is our foreign key
      t.timestamps
    end
    SELECT "users".*
FROM "users"
INNER JOIN "reviews"
  ON "users"."id" = "reviews"."user_id"
WHERE "reviews"."game_id" = 1
  end
  end
end
