class AddProducts < ActiveRecord::Migration[7.0]
  def change

    Product.create :title => 'Hawaiian', :description => 'This is Hawaiian pizza combines pizza sauce, cheese, cooked ham, and pineapple', :price => 350, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/hawaii.png'

    Product.create :title => 'Pepperoni', :description => 'Mozzarella, pepperoni, mild sausage, ground beef, red sauce', :price => 450, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/pepperoni.png'

    Product.create :title => 'Vegetarian', :description => 'Vegetarian pizza is combination of crispy pizza crust, tomato sauce & bubbly cheese.', :price => 400, :size => 30, :is_spicy => false, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/vegetarian.png'

    Product.create :title => 'Tristan', :description => 'Mozzarella, asiago, roasted red peppers, mushrooms, pesto', :price => 470, :size => 35, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/tristan.png'

    Product.create :title => 'Dominic', :description => 'White sauce, asiago, fresh chopped basil, red onion, sliced tomatoes, mild sausage', :price => 400, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/dominic.png'

    Product.create :title => 'Sunshine', :description => 'Mozzarella, parmesan, artichokes, garlic, dollops of red sauce', :price => 500, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/sunshine.png'

    Product.create :title => 'Jasper', :description => 'Mozzarella, mushrooms, spicy chicken sausage, red sauce', :price => 500, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/jasper.png'

    Product.create :title => 'Dillon', :description => 'Mozzarella, asiago, fresh chopped basil, garlic, sliced tomatoes, red sauce', :price => 420, :size => 35, :is_spicy => false, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/dillon.png'

    Product.create :title => 'Calexico', :description => 'Mozzarella, gorgonzola, chicken, jalapenos, hot buffalo sauce, red sauce', :price => 460, :size => 30, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/calexico.png'

    Product.create :title => 'Caspian', :description => 'Mozzarella, gorgonzola, bbq chicken, barbecue sauce, sliced red onions', :price => 490, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/caspian.png'

    Product.create :title => 'Salad', :description => 'Create your own salad on a warm asiago pizza crust', :price => 440, :size => 30, :is_spicy => false, :is_veg => true, :is_best_offer => true, :path_to_image => '/images/salad.png'

  end
end
