
class RestaurantListPage
  include Capybara::DSL

  def load
    visit "/restaurants"
  end

  def list
    all(".place-info-box")
  end

  def go(restaurante)
    find(".place-info-box", text: restaurante.upcase).click
  end
end
