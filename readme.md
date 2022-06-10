# NotesSystemApp

App that creates and saves dokuments that can be viewd and changed and the saved to a MySQL database through TinyMCE editor, it uses Node.js, Express and its fron-end is built in old fashioned Vanilla JS!

<br>

by Joel Hägg

#

<br>

# How to start

I run MAMP to start a MySQL server

- npm install
- nodemon start

<br>

#

<br>

# MySQL setup

<br>

    Name	    Type	     Collation	      Attributes	Null	Default
    id 	        int(11)	                                    No      None
    header	    varchar(50)	 utf8_general_ci                Yes     NULL
    textContent	text	     utf8_general_ci		        Yes	    NULL
    created	    datetime			                        No	    CURRENT_TIMESTAMP
    lastChanged	text	     utf8_general_ci		        Yes	    NULL
    softDelete	tinyint(4)			                        Yes	    NULL

<br>
<br>

# npm packs

- express
- nodemon
- mysql2
- cors
- bcrypt
