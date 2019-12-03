.PHONY: clean
all:
	git clone --depth 1 https://github.com/ComplianceAsCode/content
	(cd content; ./build_product rhel8)
	cp -a content/build/rhel8 ./
	rm -rf content/

clean:
	rm -rf content/
