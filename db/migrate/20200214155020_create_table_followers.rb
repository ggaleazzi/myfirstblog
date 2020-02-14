class CreateTableFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :followers do |t|  
      t.string :email
    end
  end
end
