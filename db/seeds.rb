# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Line.create!([
	{ name: "1", description: "", active: false },
	{ name: "2", description: "", active: false },
	{ name: "3", description: "Line 3 was opened in 1904, from Villiers to Père Lachaise. It was also the first line to incorporate new safety features designed after the Couronnes Fire on Line 2. Nowadays it crosses the city from left to right, from Pont de Levallois to Gallieni. It currently uses refurbished MF67 stock.", active: true },
	{ name: "3bis", description: "Line 3bis used to be part of Line 3 before 1971. It was then decided to cut Line 3bis into a small branch line to improve the overall performance of Line 3. It is the shortest line on the network, just over 1km long, and requires just two trains of MF67 stock in off-peak duty.", active: true },
	{ name: "4", description: "", active: false },
	{ name: "5", description: "", active: false },
	{ name: "6", description: "Line 6 is probably one of the network's most interesting lines. Much of it is overground, and there is a lot that can be seen from its imposing viaducts. Line 6 was envisaged to be a circular line along with Line 2 - which is why they start and end at the same stations. It was in fact originally called Line 2 Sud. Line 6 also uses rubber-tyred MP73 stock, which gives improved grip and noise reduction on the open-air section.", active: true },
	{ name: "7", description: "", active: false },
	{ name: "7bis", description: "Line 7bis was originally part of Line 7 before 1967, to improve service on the main line. It is the second-shortest line after Line 3bis, but it is also one of the most interesting. It cuts through the Buttes-Chaumont area of Paris deep underground, passing through enormous caverns left behind by old gypsum mines. It currently uses MF88 stock, which is strangely more modern than the stock used on most other lines.", active: true },
	{ name: "8", description: "", active: false },
	{ name: "9", description: "", active: false },
	{ name: "10", description: "Line 10 is the only \"main\" line that does not have Automatic Train Operation (ATO) fitted. This is because it has always been an under-used line, so such an expense has never been thought plausible. It does however serve an important role in connecting Gare d'Austerlitz to several RER stations, and does feature some very interesting stations. It now uses MF67 stock.", active: true },
	{ name: "11", description: "", active: false },
	{ name: "12", description: "Line 12 was not originally owned by the CMP (Compagnie du chemin de fer Métropolitain de Paris), but by the Nord-Sud company, who had their own separate style from the CMP. This line therefore presents some very different and unique stations along its long route. It is an important line because it connect Montmartre in the north with Montparnasse in the south. It now uses MF67 stock.", active: true },
	{ name: "13", description: "", active: false },
	{ name: "14", description: "Line 14 was also known as Météor (MÉTro Est-Ouest Rapide) during its recent construction. Originally planned to open in 1998 for the World Cup, it did open in 1998 - but in October. It is the most modern line on the network, and possibly the most technologically advanced in Europe. All MP89-stock trains are totally automatic, and no staff is needed anywhere on the train or on the platforms. The architecture on this line is also stunning.", active: true }
])