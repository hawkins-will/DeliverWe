# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Restaurant.destroy_all
Order.destroy_all
Patron.destroy_all
Item.destroy_all
Post.destroy_all

Restaurant.create(name: "Wok and Roll", logo_url: "https://res.cloudinary.com/grubhub/image/upload/w_400,h_300,f_auto,fl_lossy,q_80,c_fit/gopwvi5tbcacgeuz7grp", menu_link: "https://www.grubhub.com/restaurant/wok--roll-chinatown-604-h-st-nw-washington/69386", delivery_fee: 1.00, delivery_min: 15.00, tax: 10)
Restaurant.create(name: "Qdoba", logo_url: "http://morethanthecurve.com/wp-content/uploads/2014/12/qdoba-logo.png", menu_link: "https://www.grubhub.com/restaurant/qdoba-mexican-grill-555-11th-st-nw-washington/344690", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Baja Fresh", logo_url: "https://www.brandsoftheworld.com/sites/default/files/styles/logo-thumbnail/public/0008/1904/brand.gif?itok=FeAPId8c", menu_link: "https://www.grubhub.com/restaurant/baja-fresh-1990-k-st-nw-washington/69436", delivery_fee: 0, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Wingos", logo_url: "http://blog.thecorp.org/wp-content/uploads/2013/06/0.jpg", menu_link: "https://www.grubhub.com/restaurant/wingos-3207-o-st-nw-washington/68745", delivery_fee: 3.00, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Roti Mediterranean", logo_url: "http://www.downtowndc.org/sites/default/files/styles/logo-nocrop/public/images/poi/Roti%20Mediterranean%20Grill%20Logo.png?itok=zV5HVs8g", menu_link: "https://www.grubhub.com/restaurant/roti-modern-mediterranean-1629-k-st-nw-washington/365147", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Super Tacos", logo_url: "https://s3-media4.fl.yelpcdn.com/bphoto/0uFfoArHT_ntA2lLbAfh-w/ls.jpg", menu_link: "https://www.grubhub.com/restaurant/super-tacos--bakery-1762-columbia-rd-nw-washington/69428", delivery_fee: 0.00, delivery_min: 20.00, tax: 10)
Restaurant.create(name: "Jimmy Johns", logo_url: "https://img.clipartfox.com/b53b12d929760994af23e929d4e68d1a_jimmy-johns-fast-food-ucf-jimmy-johns-clipart_1084-1084.jpeg", menu_link: "https://online.jimmyjohns.com/#/menu", delivery_fee: 1.50, delivery_min: 0.00, tax: 10)
Restaurant.create(name: "Pizza Hut", logo_url: "http://www.underconsideration.com/brandnew/archives/pizza_hut_logo_detail.png", menu_link: "https://www.pizzahut.com/#/home", delivery_fee: 4.00, delivery_min: 0.00, tax: 10)
Restaurant.create(name: "Dominos", logo_url: "https://cache.dominos.com/olo/4_5_7/assets/build/images/promo/dominos_social_logo.jpg", menu_link: "https://www.dominos.com/en/?utm_campaign=69796710|c|GG&utm_source=Google&utm_medium=p_search&utm_content=kwd-24470291|69796710|21980500710&utm_term=dominos&matchtype=e", delivery_fee: 2.99, delivery_min: 0.00, tax: 10)
Restaurant.create(name: "Papa Johns", logo_url: "http://deltafonts.com/wp-content/uploads/Papa-Johns-Pizza.png", menu_link: "https://www.papajohns.com/", delivery_fee: 3.25, delivery_min: 0.00, tax: 10)
Restaurant.create(name: "Vapiano", logo_url: "https://pbs.twimg.com/profile_images/429160079040839680/nJXH6_Ys_400x400.jpeg", menu_link: "https://www.grubhub.com/restaurant/vapiano-623-625-h-st-nw-washington/325410", delivery_fee: 3.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Pizza Autentica", logo_url: "http://www.pizzaautentica.com/uploads/creativemanner/images/logo.png", menu_link: "https://www.grubhub.com/restaurant/pizza-autentica-1331-l-st-nw-washington/160692", delivery_fee: 0.00, delivery_min: 15.00, tax: 10)
Restaurant.create(name: "Proper 21", logo_url: "https://static.wixstatic.com/media/328af2_dbd8bbf31f3a40eda557c325c089472d~mv2_d_3300_3300_s_4_2.png_srz_220_220_85_22_0.50_1.20_0.00_png_srz", menu_link: "https://www.grubhub.com/restaurant/proper-21-1319-f-st-nw-washington/347647", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Chop't", logo_url: "https://beccaguy.files.wordpress.com/2010/09/choptlogo.jpg", menu_link: "https://www.grubhub.com/restaurant/chopt-creative-salad-co-1300-connecticut-ave-nw-washington/69355", delivery_fee: 2.00, delivery_min: 7.50, tax: 10)
Restaurant.create(name: "The Little Beet", logo_url: "https://media.glassdoor.com/sqll/1106095/the-little-beet-squarelogo-1449269777735.png", menu_link: "https://www.grubhub.com/restaurant/the-little-beet-1212-18th-st-nw-washington/345903", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Daily Grill", logo_url: "https://www.gratonresortcasino.com/~/media/Graton-v2/Hero-Overlay/Dailygrill-logo.png?h=259&la=en&w=246", menu_link: "https://www.grubhub.com/restaurant/daily-grill-1200-18th-st-nw-washington/316115", delivery_fee: 3.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Peking Garden", logo_url: "http://www.swiss-regio.ch/sites/default/files/styles/swiss_regio_logo_full_w/public/297x139_Logo_PekingGarden_0.jpg?itok=so0JSUCF", menu_link: "https://www.grubhub.com/restaurant/peking-garden-2008-18th-st-nw-washington/68818", delivery_fee: 1.00, delivery_min: 15.00, tax: 10)
Restaurant.create(name: "Popeyes", logo_url: "http://www.underconsideration.com/brandnew/archives/popeyes_crest.jpg", menu_link: "https://www.grubhub.com/restaurant/popeyes-1322-14th-st-nw-washington/315277", delivery_fee: 4.99, delivery_min: 12, tax: 10)
Restaurant.create(name: "Bread Bite Bakery", logo_url: "http://breadbitebakery.com/images/breadbite_logo_250w.png", menu_link: "https://www.grubhub.com/restaurant/bread-bite-bakery-1506-u-st-nw-washington/331634", delivery_fee: 3.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Teaism", logo_url: "https://c2.staticflickr.com/8/7433/8941893070_b3fcb742e8_z.jpg", menu_link: "https://www.grubhub.com/restaurant/teaism-dupont-circle-2009-r-st-nw-washington/335888", delivery_fee: 3.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Zoup", logo_url: "http://www.zoup.com/images/zoup-logo.png", menu_link: "https://www.grubhub.com/restaurant/zoup-1101-vermont-ave-nw-washington/342330", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Buredo", logo_url: "https://www.zagat.com/proxy/v1.4?m=image&a=resize&url=http%3A//storage.googleapis.com/zgt-photos/0x89b7b795dc2c001b_0x6a43ba14c1267126/2880edf4ad3d3cfac1c5f7841590fed8.jpg&max_height=600&max_width=800&key=abbc09b7c840c10937a4db331422c98b", menu_link: "https://www.grubhub.com/restaurant/buredo-1213-connecticut-ave-nw-washington/342092", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Soupergirl", logo_url: "http://jbforrest.com/wp-content/themes/echo/timthumb.php?src=http://jbforrest.com/wp-content/uploads/2011/08/soupergirl-logo.jpg&h=9999&w=660&q=60", menu_link: "https://www.grubhub.com/restaurant/soupergirl-1829-m-st-nw-washington/331706", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Subway", logo_url: "http://www.gogoosecreek.com/portals/0/images/Subway%20Logo.png", menu_link: "https://www.grubhub.com/restaurant/subway-57669-1010-massachusetts-ave-nw-washington/339650", delivery_fee: 2.99, delivery_min: 10.00, tax: 10)
Restaurant.create(name: "Tonton Chicken", logo_url: "https://pbs.twimg.com/profile_images/509447639201374209/0I-3LzOK_400x400.png", menu_link: "https://www.grubhub.com/restaurant/tonton-chicken-1018-vermont-ave-nw-washington/296252", delivery_fee: 2.99, delivery_min: 15.00, tax: 10)
