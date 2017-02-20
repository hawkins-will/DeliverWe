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

Restaurant.create(name: "Pizza Hut", logo_url: "http://vignette3.wikia.nocookie.net/logopedia/images/b/bc/Pizzahut.jpg/revision/latest?cb=20161129134629", menu_link: "https://www.pizzahut.com/?gclid=CjwKEAiAxKrFBRDm25f60OegtwwSJABgEC-ZphG5SioXTuH6eacU6mtIwz9CE3xPbIxyuOykAgSiXBoCiv_w_wcB&gclsrc=aw.ds&dclid=CLWatpO3n9ICFU0GNwodyZ8IpQ#/home", delivery_fee: 0)
Restaurant.create(name: "Wing Zone", logo_url: "https://s3-ap-southeast-1.amazonaws.com/v3-live.image.oddle.me/logo/menu_logo_WingZone5daef9.jpg", menu_link: "https://www.grubhub.com/restaurant/wing-zone-4110-mount-vernon-ave-alexandria/69029?gclid=CjwKEAiAxKrFBRDm25f60OegtwwSJABgEC-ZvJCyXrxde7xyK9wPVQF2zDl8_s8SCueCI8f-Kka3WhoCvX_w_wcB&utm_source=google&utm_medium=cpc&utm_campaign=Washington%20DC,%20DC%20%7C%20Alexandria,%20VA%20%7C%20Restaurants&utm_term=wing%20zone&efkwid=40614001&ef_id=WHZZ7wAABLK@8Qf5:20170220194257:s", delivery_fee: 0)
Restaurant.create(name: "Jimmy Johns", logo_url: "https://wikidownload.com/Download/2013/10/jimmy-johns-logo.jpg", menu_link: "https://www.jimmyjohns.com/menu/#/", delivery_fee: 0)
