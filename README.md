# Transfering from Google Keep to Bear Notes (for MacOS)

I couldn't find a solution that was good enough for my purposes, so this is what I came up with. This **works with images**, and it **preserves all of your tags!**

- Use [Google Takeout](takeout.google.com) to export your Google Keep notes to a zip file. Download it and extract it somewhere on your computer.

- In terminal navigate to the Takeout/Keep/ folder & run this. It adds hashtags to your labels so that Bear will recognise them.

`sed -i '' -e 's|<span class="label-name">|<span class="label-name">#|g' *.html`

- Next we're going to change the creation/modification dates of the downloaded notes so their date/times will get imported into Bear. Replace /path/to with the correct path to these files (set_time.py is in this repo and the Takeout folder should be the one you just downloaded) and run this command.

`python /path/to/Keep-to-Bear/set_time.py /path/to/Takeout/Keep/*.html`

- Then import all the html files into Bear (File -> Import Notes), checking "Keep original dates" and "Use file name as title".

If you use the pound (#) character in your notes, Bear might pick it up as a tag. You can go through these and wrap them in backticks (\`) so they won't get added as tags.
