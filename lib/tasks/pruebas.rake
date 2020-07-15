namespace :sc do
  desc "Extrae infoirmación de la alcaldia"
  task alcaldia: :environment do
    require "httparty"
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

    [001..999].each do |numero|
      mechanize = Mechanize.new
      page = mechanize.post('https://orion.barranquilla.gov.co:8787/mov_liquidacion/datosBasicos.do',{"txtDato" => "KFU#{numero}", "Buscar" => "Buscar"})
      # puts "Respuesta body => #{page.body}"
      todos_los_input = page.search('input')
      puts "Input => #{todos_los_input}"

    end

  end

  # -----------------------------
  # desc "Extrae información de medellin"
  # task medellin: :environment do
  #   puts "Entro"
  # end

end
