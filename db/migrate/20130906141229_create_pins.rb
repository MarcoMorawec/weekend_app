class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
    	t.string 'emotion'
    	t.string 'learned_1'
    	t.string 'learned_2'
    	t.string 'learned_3'

    	t.integer 'hour'


      t.timestamps
    end
  end
end

