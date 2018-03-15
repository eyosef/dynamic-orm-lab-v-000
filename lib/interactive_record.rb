require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  def self.table_name
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      album TEXT
      )
    SQL

    DB[:conn].execute(sql)
    DB[:conn].results_as_hash = true 
  end

end
