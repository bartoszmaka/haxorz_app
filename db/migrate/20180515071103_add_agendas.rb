class AddAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :agendas do |t|
      t.datetime :occurs_at
    end
  end
end
