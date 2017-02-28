# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Order.destroy_all
Patron.destroy_all
Item.destroy_all

Restaurant.create(name: "Pizza Hut", logo_url: "http://vignette3.wikia.nocookie.net/logopedia/images/b/bc/Pizzahut.jpg/revision/latest?cb=20161129134629", menu_link: "https://www.pizzahut.com/?gclid=CjwKEAiAxKrFBRDm25f60OegtwwSJABgEC-ZphG5SioXTuH6eacU6mtIwz9CE3xPbIxyuOykAgSiXBoCiv_w_wcB&gclsrc=aw.ds&dclid=CLWatpO3n9ICFU0GNwodyZ8IpQ#/home", delivery_fee: 0, delivery_min: 16.50, tax: 10)
Restaurant.create(name: "Wing Zone", logo_url: "https://s3-ap-southeast-1.amazonaws.com/v3-live.image.oddle.me/logo/menu_logo_WingZone5daef9.jpg", menu_link: "https://www.grubhub.com/restaurant/wing-zone-4110-mount-vernon-ave-alexandria/69029?gclid=CjwKEAiAxKrFBRDm25f60OegtwwSJABgEC-ZvJCyXrxde7xyK9wPVQF2zDl8_s8SCueCI8f-Kka3WhoCvX_w_wcB&utm_source=google&utm_medium=cpc&utm_campaign=Washington%20DC,%20DC%20%7C%20Alexandria,%20VA%20%7C%20Restaurants&utm_term=wing%20zone&efkwid=40614001&ef_id=WHZZ7wAABLK@8Qf5:20170220194257:s", delivery_fee: 0, delivery_min: 16.50, tax: 10)
Restaurant.create(name: "Jimmy Johns", logo_url: "https://wikidownload.com/Download/2013/10/jimmy-johns-logo.jpg", menu_link: "https://www.jimmyjohns.com/menu/#/", delivery_fee: 0, delivery_min: 0.00, tax: 10)
Restaurant.create(name: "Panda Express", logo_url: "http://vignette2.wikia.nocookie.net/logopedia/images/0/0f/Panda_Express_2014.png/revision/latest?cb=20141212185726", menu_link: "https://www.grubhub.com/restaurant/panda-express-kingstowne-6477-old-beulah-st-alexandria/332952?gclid=CjwKEAiAxKrFBRDm25f60OegtwwSJABgEC-Z-I5jS6PYXhd8NVDoxvtVJ9gO-eCyu5lgyXVjnDG00hoCydvw_wcB&utm_source=google&utm_medium=cpc&utm_campaign=Washington%20DC,%20DC%20%7C%20Alexandria,%20VA%20%7C%20Restaurants&utm_term=%2Bpanda%20%2Bexpress&efkwid=27028798565&ef_id=WHZZ7wAABLK@8Qf5:20170221013125:s", delivery_fee: 1.00, delivery_min: 16.50, tax: 10)
Restaurant.create(name: "Wok and Roll", logo_url: "https://res.cloudinary.com/grubhub/image/upload/w_400,h_300,f_auto,fl_lossy,q_80,c_fit/gopwvi5tbcacgeuz7grp", menu_link: "https://www.grubhub.com/restaurant/wok--roll-adams-morgan-2400-18th-st-nw-washington/205984", delivery_fee: 1.00, delivery_min: 16.50, tax: 10)
Restaurant.create(name: "Tonton Chicken", logo_url: "https://pbs.twimg.com/profile_images/509447639201374209/0I-3LzOK_400x400.png", menu_link: "https://www.grubhub.com/restaurant/tonton-chicken-1018-vermont-ave-nw-washington/296252", delivery_fee: 2.99, delivery_min: 15.00, tax: 10)
Restaurant.create(name: "Qdoba", logo_url: "http://www.logospike.com/wp-content/uploads/2015/05/Qdoba_Logo_03.jpg", menu_link: "https://www.grubhub.com/restaurant/qdoba-mexican-grill-555-11th-st-nw-washington/344690", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
