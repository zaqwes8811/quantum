

install_env:
	virtualenv -p python3.8 venv

activate_env:
	. ./venv/bin/activate

activate_env_pycharm:
	# Can't use precreated
	# Python >= 3.8
	. ./venv_pycharm/bin/activate

install_deps:
	pip install git+https://github.com/qiskit-community/qiskit-textbook.git#subdirectory=qiskit-textbook-src
	pip install pylatexenc

confugure_visualization:
	mkdir -p ~/.qiskit/
	touch ~/.qiskit/settings.conf
	sublime_text ~/.qiskit/settings.conf

	#[default]
	#circuit_drawer = mpl