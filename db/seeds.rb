imagenes = ['http://www.dev-metal.com/wp-content/uploads/2014/01/github-logo-octocat.png',
			'http://media-cache-ak0.pinimg.com/736x/e2/2f/5b/e22f5b705dbd67800cfb83ff3912c107.jpg',
			'https://droidcon.in/2011/wp-content/uploads/octocat-peta.jpg',
			'http://drop.ctn.io/k/found/06%20OctoKitties/adventure-cat.jpg',
			'http://xaharts.org/funny/i/gitopuss/Dune_octocat.png',
			'http://xaharts.org/funny/i/gitopuss/android_octocat.png']



imagenes.each_with_index do |imagen, indice|
	imagenes[indice]= MiniMagick::Image.open(imagen)
end