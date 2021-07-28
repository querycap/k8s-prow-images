TEMP_DIR=${PWD}/.tmp

prepare:
	rm -rf $(TEMP_DIR)/test-infra
	git clone --depth=1 https://github.com/kubernetes/test-infra.git $(TEMP_DIR)/test-infra
	cd $(TEMP_DIR)/test-infra && wget -q -O - https://github.com/kubernetes/test-infra/compare/master...morlay:master.patch | git apply -v
	rm -rf ./images/bootstrap/*
	cp -r $(TEMP_DIR)/test-infra/scenarios ./images/bootstrap/scenarios
	cp -r $(TEMP_DIR)/test-infra/images/bootstrap/* ./images/bootstrap
