Files downloaded from: http://ixp.mikrotik.co.id/download/archive

Files
File menu shows all userspace files on the router. It is possible to see and edit file content or delete file. File creation is possible starting from RouterOS 7.9beta2.  If RouterOS ".npk" package is uploaded, the file menu will also show package-specific information, for example, architecture, build date and time, etc.

[admin@MikroTik] > file print detail
 0 name="routeros-mipsbe-6.45.7.npk" type="package" size=11.5MiB creation-time=oct/29/2019 11:36:15
   package-name="routeros-mipsbe" package-version="6.45.7" package-build-time=oct/24/2019 08:44:35
   package-architecture="mips"
 
 
package-architecture (string)	Architecture that package is built for. Applies only to RouterOS ".npk" files
package-built-time (string)	A time when the package was built. Applies only to RouterOS ".npk" files
package-name (string)	Name of the installable package that. Applies only to RouterOS ".npk" files
package-version (string)	A version of the installable package that. Applies only to RouterOS ".npk" files

https://help.mikrotik.com/docs/pages/viewpage.action?pageId=2555971
