extends Viewport

func capture(image_size):
	size.y = image_size
	size.x = image_size * $AspectRatioContainer.ratio
	print(size)
	yield(VisualServer, "frame_post_draw")
	var img = get_texture().get_data()
	img.save_png("D:\\craftsman\\Documents\\Godot\\Saga Style Status\\test template\\test.png")
