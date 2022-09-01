require "pry"
require "active_record"

#Database
    ActiveRecord::Base.establish_connection(
        adapter: "sqlite3",
        database: "db/dogs.sqlite"
      )

#table
      sql = <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY,
        name TEXT
      )
    SQL
    
    ActiveRecord::Base.connection.execute(sql)

#Logging output terminal
# ActiveRecord::Base.logger = Logger.new(STDOUT)

#class inherits from ActiveRecord::Base
    class Dog < ActiveRecord::Base
    end

# binding.pry
# ""

