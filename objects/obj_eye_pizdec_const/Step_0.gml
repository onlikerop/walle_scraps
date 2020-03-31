if global.has_l_eye and global.has_r_eye
{
	instance_destroy(self)
}

if global.has_l_eye = false and global.has_r_eye = false
	{
		self.image_alpha = random_range(0.66, 0.88)
	}