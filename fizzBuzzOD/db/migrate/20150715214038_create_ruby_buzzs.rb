class CreateRubyBuzzs < ActiveRecord::Migration
  def change
    create_table :ruby_buzzs do |t|
      t.string :question
      t.string :answer
      t.string :submission

      t.timestamps
    end
  end
end
