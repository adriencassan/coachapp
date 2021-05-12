class Exercice < ApplicationRecord

  mount_uploader :video, AttachementUploader

  def self.to_csv
    CSV.generate({headers: true, col_sep: ";", encoding: 'UTF-8'}) do |csv|
      csv << ["id","nom","nomEN"]

      all.each do |i|
        csv << [
          i.id,
          i.name,
          i.nameEN]
      end
    end
  end
end
