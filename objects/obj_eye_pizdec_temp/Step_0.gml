if global.has_l_eye and global.has_r_eye
{
	instance_destroy(self)
}

if global.has_l_eye = false and global.has_r_eye = false
	{
			self.image_index = round(random_range(1, 4))
	}
else
	{
		self.image_index = 0
	}