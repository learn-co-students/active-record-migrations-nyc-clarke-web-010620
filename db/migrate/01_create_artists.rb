ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

class CreateArtists < ActiveRecord::Migration[4.2]
    def change
        sql = <<-SQL
        CREATE TABLE IF NOT EXISTS artists (
        id INTEGER PRIMARY KEY,
        name TEXT,
        genre TEXT,
        age INTEGER,
        hometown TEXT
        )
      SQL
    end

    ActiveRecord::Base.connection.execute(sql)
    
  end