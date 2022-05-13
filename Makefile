default: project.code_quality

ENVIRONMENT ?= lab
ZIP_FILE_NAME=custom-control-tower-configuration.zip
LOCAL_BUILD_DIR=./.build
LOCAL_ZIP_PATH=./${ZIP_FILE_NAME}

# (One-Time) Sets up the project Python virtual environment...
.PHONY: project.setup
project.setup:
	pip install --upgrade pip pipenv setuptools wheel
	pipenv install --dev
	gem install bundler
	bundle config set path '.bundle'
	bundle install

# Cleans all local project resources related to build creation...
.PHONY: project.clean
project.clean:
	rm -rf ${LOCAL_BUILD_DIR}
	mkdir ${LOCAL_BUILD_DIR}

# Copies relevant project resources to the local ${LOCAL_BUILD_DIR}...
.PHONY: project.build
project.build: project.clean
	cp -R ./custom-control-tower-configuration/ ${LOCAL_BUILD_DIR}/custom-control-tower-configuration
	cp ./manifest.${ENVIRONMENT}.yaml ${LOCAL_BUILD_DIR}/manifest.yaml


# Builds a .zip file based on the contents in the ${LOCAL_BUILD_DIR}...
.PHONY: project.build_zip
project.build_zip: project.build
	cd ${LOCAL_BUILD_DIR} && \
		zip -r ${ZIP_FILE_NAME} . \
			--include=./custom-control-tower-configuration/templates/* \
			--include=./custom-control-tower-configuration/parameters/* \
			--include=./manifest.yaml