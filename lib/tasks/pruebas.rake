namespace :sc do
  desc "Extrae infoirmación de la alcaldia"
  task alcaldia: :environment do
    # require "httparty"
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    I_KNOW_THAT_OPENSSL_VERIFY_PEER_EQUALS_VERIFY_NONE_IS_WRONG = nil

    mechanize = Mechanize.new
    puts "NOMBRES"
    # (250..260).each do |numero|
      page = mechanize.post('https://orion.barranquilla.gov.co:8787/mov_liquidacion/datosBasicos.do',{"txtDato" => "KFU294", "Buscar" => "Buscar"})
      # pp page
      form = page.forms.first
      form.fields.each { |objeto| puts "#{objeto.name} : #{objeto.value}" }
      # ob =  form.fields.last
      # puts "#{ob.value}" if ob.value.present?
      # puts "-----------------------------------"
    #   sleep(1)
    # end

    # form.fields.each do |objeto|
    #   puts "#{objeto.name} : #{objeto.value}"
    # end

    # puts "Respuesta body => #{page.body}"
    # todos_los_input = page.search('input')
    # puts "Input => #{todos_los_input}"

  end

  desc "Extrae información de Boyaca"
  task boyaca: :environment do
    mechanize = Mechanize.new
    (100..200).each do |numero|
      page = mechanize.get("https://vehiculos.boyaca.gov.co/publicoweb/vehiculos/listado.php?placa=DUD#{numero}")
      # pp page
      form = page.forms.first
      form.fields.each { |objeto| puts "#{objeto.name} : #{objeto.value}" }
    end

  end

  desc "Extrae información de Santander"
  task santander: :environment do
    mechanize = Mechanize.new
    page = mechanize.post('https://iuva.syc.com.co/consulta/detalladoVehiculo.aspx',{"idCliente" => "1", "placa" => "CIM283"})
    # puts page.body
    # datos = page.at '.textDesc'
    datos = page.search '.textDesc'
    # puts "Datos => #{datos}"
    datos.each do |dato|
      puts "#{dato.text}" if dato.text.present?
    end
  end

end
