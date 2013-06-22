###
	A canvas wallpaper.
	@Author: Jose Padilla
###

$ -> init()
$ -> $('#canvaSquare').click -> 
				stop()
				return


# Initial variables
canvas = context = bufferCanvas = bufferContext = timer = anim = null
rainDropsArray = []
MAX_DROPS = 50

# Functions
init = () ->
	# Get the canvas and the context
	canvas = document.getElementById('canvaSquare')
	context = canvas.getContext('2d')
	context.canvas.width = window.innerWidth
	context.canvas.height = window.innerHeight
	
	# Create a new buffer.
	bufferCanvas = document.createElement('canvas')
	bufferContext = bufferCanvas.getContext('2d')
	bufferContext.canvas.width = context.canvas.width
	bufferContext.canvas.height = context.canvas.height

	timer = setInterval addDrop, 10

	Draw()

	anim = setInterval animation, 5

	return

Rain = () ->
	this.x = Math.round(Math.random() * canvas.width)
	this.y = Math.round(Math.random() * canvas.height)
	this.speed = Math.random() * 1.05
	this.opacity = Math.random() * 0.5
	this.width = (Math.random() * 90) + 1
	this.height = this.width
	return

addDrop = () ->
	rainDropsArray[rainDropsArray.length] = new Rain()
	if rainDropsArray.length == MAX_DROPS
		clearInterval(timer)
		clearInterval(anim)
	return

animation = () ->
	Update()
	Draw()
	return

blank = () ->
	bufferContext.fillStyle = '#edeef0'
	bufferContext.fillRect 0, 0, bufferContext.canvas.width, bufferContext.canvas.height
	return

Update = () ->
	for e, i in rainDropsArray
		if rainDropsArray[i].x <= canvas.width + rainDropsArray[i].width
			rainDropsArray[i].x += Math.random() * 0.20 + rainDropsArray[i].speed
			rainDropsArray[i].width += 1.001
			rainDropsArray[i].height = rainDropsArray[i].width 
		else
			rainDropsArray[i].x = -1 * rainDropsArray[i].width
	return

Draw = () ->
	context.save()
	blank()
	for e, i in rainDropsArray
		bufferContext.fillStyle = "rgba(77,77,77," + rainDropsArray[i].opacity + ")"
		bufferContext.fillRect rainDropsArray[i].x, rainDropsArray[i].y, rainDropsArray[i].width, rainDropsArray[i].height
	context.drawImage bufferCanvas, 0, 0, bufferCanvas.width, bufferCanvas.height
	context.restore()
	return

stop = () ->
	clearInterval(timer)
	clearInterval(addDrop)
	clearInterval(anim)
	return
