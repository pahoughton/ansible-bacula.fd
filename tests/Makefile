# 2015-06-15 (cc) <paul4hough@gmail.com>
#
hide=@

roles/pahoughton.bacula.fd:
	$(hide)mkdir roles
	$(hide)ln -s ../.. $@
	$(hide)test -f $@/tasks/main.yml

unittest.inv:
	$(hide)echo localhost > unittest.inv

unittest: roles/pahoughton.bacula.fd unittest.inv
	$(hide)ansible-playbook -i unittest.inv --syntax-check unittest.yml
	$(hide)bash unittest.bash

realclean clean:
	rm `cat .gitignore`
	rmdir roles
