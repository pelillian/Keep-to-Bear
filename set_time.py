import os
import re
import sys
import time
import datetime

import parsedatetime as pdt

cal = pdt.Calendar()

def set_file_date(file):
	with open(file) as f:
		text = f.read()
		datestr = re.search(r'<\/div>\n[^<>/\"=\n]*(?=</div>)', text).group(0)
		datestr = datestr.splitlines()[1]
		date, _ = cal.parse(datestr)
		date = time.mktime(date)
	os.utime(file, (date, date))

for arg in sys.argv[1:]:
	if not ".html" in arg:
		continue
	set_file_date(arg)