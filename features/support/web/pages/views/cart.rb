
class CartView
  include Capybara::DSL

  def box
    find("#cart")
  end

  def total
    box.find("tr", text: "Total:").find("td")
  end

  def remove_item(item)
    all("table tbody tr")[item].find(".danger").click
  end

  def clean
    click_button "Limpar"
  end

  def close
    click_link "Fechar Pedido"
  end
end
