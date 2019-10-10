Restaurant.destroy_all
Critic.destroy_all
Review.destroy_all

Restaurant.create(name: "The Dabney", cuisine: "American", neighborhood: "Shaw")
Restaurant.create(name: "Daikaya", cuisine: "Japanese", neighborhood: "Chinatown")
Restaurant.create(name: "Rose's Luxury", cuisine: "American", neighborhood: "Barracks Row")
Restaurant.create(name: "Kochix", cuisine: "Korean", neighborhood: "Shaw")
Restaurant.create(name: "Jaleo", cuisine: "Spanish", neighborhood: "Chinatown")

Critic.create(name: "Justin Schuble", soc_med: "DCfoodporn")
Critic.create(name: "Bob Smith", soc_med: "DCfoodgram")
Critic.create(name: "Elite Yelper", soc_med: "wannabecritic")
Critic.create(name: "Will Comfort", soc_med: "foodluvr")
Critic.create(name: "Khaled Hassan", soc_med: "f00dluvr")

Review.create(restaurant_id: 1, critic_id: 5)
Review.create(restaurant_id: 2, critic_id: 4)
Review.create(restaurant_id: 3, critic_id: 3)
Review.create(restaurant_id: 4, critic_id: 2)
Review.create(restaurant_id: 5, critic_id: 1)
Review.create(restaurant_id: 5, critic_id: 5)
Review.create(restaurant_id: 4, critic_id: 4)
Review.create(restaurant_id: 3, critic_id: 3)
Review.create(restaurant_id: 2, critic_id: 2)
Review.create(restaurant_id: 1, critic_id: 1)