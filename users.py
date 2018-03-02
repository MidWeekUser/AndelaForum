

class CreateModerator() :
	'''Moderators have the added ability to delete comments (to remove trolls'''
	def __init__(self) :
		self.user_id = None # int
		self.username = None # str
		self.first_name = None # str
		self.last_name = None # str
		self.user_level = None # int
		pass
	def create_comment (self, comment) :
		# returns
		pass
	def edit_own_comment (self, new_comment) :
		# returns
		pass

class CreateAdmin(object):
	'''admins have the ability to edit or delete any comment.
	'''

	def __init__(self) :
		self.user_id = None # int
		self.username = None # str
		self.first_name = None # str
		self.last_name = None # str
		self.user_level = None # int
		pass
	def create_comment (self, comment) :
		# returns
		pass
	def edit_comments (self, new_comment) :
    		# returns
		pass
	def delete_comments (self) :
		# returns
		pass
	def create (self) :
		# returns
		pass




class CreateNormalUser(object):
	'''Normal users can only create new comments, and edit the their own comments.'''

	def __init__(self) :
		self.user_id = None # int
		self.username = None # str
		self.first_name = None # str
		self.last_name = None # str
		self.user_level = None # int
		pass
	def create_comment (self, comment) :
		# returns
		pass
	def edit_own_comment (self, new_comment) :
		# returns
		pass
