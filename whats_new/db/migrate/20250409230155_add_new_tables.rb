class AddNewTables < ActiveRecord::Migration[8.0]
  def change

    create_table :users do |t|
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
    
    create_table :chats do |t|
      t.integer :sender_id, null: false
      t.integer :receiver_id, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end

    create_table :messages do |t|
      t.integer :chat_id, null: false
      t.integer :user_id, null: false
      t.text :body, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
