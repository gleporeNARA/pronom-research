The Descriptor File
For a more detailed view of how these elements of a virtual disk come together in practice, look
at the following example text descriptor file, called test.vmdk. It describes a link in a virtual
disk that is split into files no larger than 2GB each and that starts small and grows as data is
added. The descriptor file is not case-sensitive.
Lines beginning with # are comments and are ignored by the VMware program that opens the
disk.
% cat test.vmdk
# Disk DescriptorFile
version=1
CID=fffffffe
parentCID=ffffffff
createType="twoGbMaxExtentSparse"
# Extent description
RW 4192256 SPARSE "test-s001.vmdk"
RW 4192256 SPARSE "test-s002.vmdk"
RW 2101248 SPARSE "test-s003.vmdk"
# The Disk Data Base
#DDB
ddb.adapterType = "ide"
ddb.geometry.sectors = "63"
ddb.geometry.heads = "16"
ddb.geometry.cylinders = "10402"

http://www.vmware.com/app/vmdk/?src=vmdk
