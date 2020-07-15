namespace :sc do
  desc "Extrae infoirmación de la alcaldia"
  task alcaldia: :environment do
    require "httparty"
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

    mechanize = Mechanize.new
    page = mechanize.post('https://orion.barranquilla.gov.co:8787/mov_liquidacion/datosBasicos.do',{"txtDato" => "KFU294", "Buscar" => "Buscar"})
    # pp page
    form = page.forms.first
    form.fields.each { |f| puts "#{f.name} : #{f.value}" }

    # puts "Respuesta body => #{page.body}"
    # todos_los_input = page.search('input')
    # puts "Input => #{todos_los_input}"

  end

  # -----------------------------
  # desc "Extrae información de medellin"
  # task medellin: :environment do
  #   puts "Entro"
  # end

end
