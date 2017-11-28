require 'csv'

namespace :data do
  desc "Import all shops from CSV"
  task import_shopmium: :environment  do
    csv_path = File.join("#{Rails.root}/lib/data/shops_shopmium.csv")
    csv_content = File.read(csv_path)
    csv = CSV.parse(csv_content, headers: true, header_converters: :symbol, converters: :all)

    csv.each do |row|
      begin
        Shopmium.find_or_create_by(row.to_hash)
      rescue
        # Affiche les erreurs dans le terminal
        puts "Error: #{row} will not be loaded"

        # Log les erreurs dans les logs d'environnement
        Rails.logger.info "Error: #{row} will not be loaded"

        # On poursuit l'itération même si une erreur est détectée

      end
    end
  end
end