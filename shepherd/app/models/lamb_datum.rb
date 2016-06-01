class LambDatum < ActiveRecord::Base
  def self.to_csv
    attributes = %w{created_at hex_identifier activity light}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |data|
        csv << attributes.map{ |attr| data.send(attr) }
      end
    end
  end

  def hex_identifier
    identifier.to_i.to_s(16).upcase
  end
end
