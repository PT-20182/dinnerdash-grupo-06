module MealsHelper
  def image_meal(meal)
    if meal.image.attached?
      rails_blob_url (meal.image)
    else
      "../assets/def.gif"
    end
  end
end
