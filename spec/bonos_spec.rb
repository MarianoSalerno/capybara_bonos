RSpec.describe "Bonos", type: :feature do

  it "compra bono para ir a la final", type: :feature do
    visit "file:///home/mariano/Desktop/bonos/bonos/home/Club%20Atle%CC%81tico%20Independiente.htm"
    find("input[placeholder='DNI']").set("32674129")
    click_on("ACEPTAR")
    find("input[placeholder='e-Mail']").set("salerno26@gmail.com")
    find("input[placeholder='Teléfono']").set("1549482624")
    all("input[type='radio']")[1].click
    until(all("input[type='radio']").any?{|radio| radio.disabled?})
      sleep 2
    end
    direcciones_de_pago = find("select").all("option")
    direcciones_de_pago.select{|direccion| direccion.text.include? "ESTADIO"}.last.select_option
    binding.pry
    click_on "ACEPTAR"
  end

end