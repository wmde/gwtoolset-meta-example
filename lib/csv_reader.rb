require 'csv'

class CSVReader
  def read(file)
    metadata = []

    CSV.read(file, col_sep: ';').each do |row|
      metadata << {
        title: row[0],
        url: row[1],
        description: row[2],
        categories: row[3],
        year: row[4]
      }
    end

    metadata
  end
end
