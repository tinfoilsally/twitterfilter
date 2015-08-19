Shoes.app title: "Twitter Filter" do

	background powderblue..white
	border("#faebd7",
			strokewidth: 3)
	style Shoes::Title, font: "Gotham Narrow"
	style Shoes::Tagline, font: "Gotham Narrow"
	style Shoes::Para, font: "Gotham Narrow"
	
	stack margin_top: 20, margin_left: 20 do
		image "http://images.clipartpanda.com/love-birds-clipart-aTeKAzjT4.png"
		end
		
	stack margin_left: 20 do 
		title "twitter filter", stroke: snow
		tagline em("it's for filtering twitter."), stroke: cadetblue 
	end
		
	stack(margin: 12) do
		para "enter username one:"
		username1 = edit_line
		un1result = edit_line.text
		para "enter username two:"
		username2 = edit_line
		un2result = edit_line.text
		para "enter hashtag:"
		hashtag = edit_line
		htresult = edit_line.text
	end
			
	flow margin_left: 100 do
		button "GO! GO! GO!" do
			alert "Alright!"
		end
	end
end