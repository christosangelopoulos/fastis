#! /bin/bash
# 
#┏━╸┏━┓┏━┓╺┳╸╻┏━┓
#┣╸ ┣━┫┗━┓ ┃ ┃┗━┓
#╹  ╹ ╹┗━┛ ╹ ╹┗━┛
#
#calendar applet for Cinnamom panel 
#written by Christos Angelopoulos September 2021
time="$(date +%H:%M)"
date="$(date +%e\ %b)"
tooltip="$(date +%H:%M\,\ %A\ %e\ %B\ %Y)"

xml=`cat <<EOF
<xml>
<appsettings>
<tooltip>$tooltip</tooltip><clickaction>gnome-calendar</clickaction>
</appsettings>
<item>
<type>box</type>
<attr>
<vertical>1</vertical>
</attr>
<item>
<type>box</type>
<attr>
<vertical>0</vertical>
<xalign>0</xalign>
</attr>	
	<item>
	<type>box</type>
	<attr>
	<vertical>1</vertical>
	<xalign>0</xalign>
	</attr>	
		<item>
		<type>text</type>
		<value>$time</value> 
		<attr><xalign>0</xalign><style>padding: 0px;font-size: 9pt;font-weight: bold;color:silver</style></attr>
		</item>
		<item>
		<type>text</type>
		<value>$date</value> 
		<attr><xalign>0</xalign><style>padding: 0px;font-size: 9pt;font-weight: bold;color:silver</style></attr>
		</item>
		</item>
	</item>
  		  
</item>

</xml>


EOF
`
echo "$xml"


					





