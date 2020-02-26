ActiveAdmin.register Book do

  index do
    column :title
    column :image
    actions
  end
  show do |book|
    attributes_table do
      row :title
      row :image
    end
    #panel 'Dishes' do
    #table_for restaurant.dishes do |t|
    # t.column :title
    #   t.column :dish_type
    #   t.column :ingredients
    #   t.column :description
    #   t.column :price
    # end
    #end
  end

  permit_params :title, :image

end
