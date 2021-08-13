aPackageInfo = [
	:name = "The RingOpenSSL Package",
	:description = "Our RingOpenSSL package using the Ring programming language",
	:folder = "ringopenssl",
	:developer = "Mahmoud Fayed",
	:email = "msfclipper@yahoo.com",
	:license = "MIT License",
	:version = "1.0.4",
	:ringversion = "1.13",
	:versions = 	[
		[
			:version = "1.0.4",
			:branch = "master"
		]
	],
	:libs = 	[
		[
			:name = "",
			:version = "",
			:providerusername = ""
		]
	],
	:files = 	[
		"main.ring",
		"README.md"
	],
	:ringfolderfiles = 	[
		"bin/load/openssllib.ring",
		"extensions/ringopenssl/buildclang.sh",
		"extensions/ringopenssl/buildgcc.sh",
		"extensions/ringopenssl/buildvc.bat",
		"extensions/ringopenssl/encrypt_v1.c",
		"extensions/ringopenssl/encrypt_v2.c",
		"extensions/ringopenssl/openssllib.ring",
		"extensions/ringopenssl/ring_vmopenssl.c",
		"extensions/ringopenssl/ring_vmopenssl.h",
		"extensions/ringopenssl/test_hash.ring",
		"tools/ring2exe/libs/openssl.ring"
	],
	:windowsringfolderfiles = 	[
		"bin/libeay32.dll",
		"bin/ring_openssl.dll",
		"bin/ssleay32.dll"
	],
	:linuxfiles = 	[

	],
	:macosfiles = 	[

	],
	:run = "ring main.ring",
	:setup = "",
	:remotefolder = "ringopenssl",
	:branch = "master",
	:providerusername = "ringpackages",
	:providerwebsite = "github.com"
]