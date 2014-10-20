class CreateSetlistSongs < ActiveRecord::Migration
  def change
    create_table :setlists do |t|
      t.string     :name
      t.datetime   :set_date
      t.timestamps
    end

    create_table :songs do |t|
      t.string     :name
      t.text       :chart
      t.integer    :position
      t.timestamps
    end

    create_table :setlist_songs do |t|
      t.belongs_to :setlist
      t.belongs_to :song
      t.integer    :position
      t.timestamps
    end
  end
end
