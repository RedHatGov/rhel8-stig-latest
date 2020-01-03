.PHONY: clean
all:
	git clone --depth 1 https://github.com/ComplianceAsCode/content
	(cd content; ./build_product rhel8)
	/usr/bin/xsltproc --stringparam profileId stig --stringparam map-to-items content/build/rhel8/xccdf-linked.xml  --stringparam ocil-document content/build/rhel8/ocil-linked.xml  --output table-rhel8-srgmap-flat.csv srg-to-csv.xslt content/shared/references/disa-os-srg-v1r6.xml
	cp ./content/build/guides/ssg-rhel8-guide-stig.html ./content/build/ssg-rhel8-ds.xml content/build/ansible/rhel8-playbook-stig.yml content/build/bash/rhel8-script-stig.sh content/build/tables/table-rhel8-srgmap-flat.html ./
	rm -rf content/

clean:
	rm -rf content/
