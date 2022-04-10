# Transfering from Google Keep to Bear Notes (for MacOS)

I couldn't find a solution that was good enough for my purposes, so this is what I came up with. This **works with images**, and it **preserves all of your tags!**

1. Use [Google Takeout](http://takeout.google.com) to export your Google Keep notes to a zip file. Download it and extract it somewhere on your computer.

2. In terminal navigate to the Takeout/Keep/ folder & run this. It adds hashtags to your labels so that Bear will recognise them.

```bash
pip3 install parsedatetime
/path/to/Keep-to-Bear/convert.sh *.html
```

3. Then import all the html files into Bear (File -> Import Notes), checking "Keep original dates" and "Use file name as title".

If you use the pound (#) character in your notes, Bear might pick it up as a tag. You can go through these and wrap them in backticks (\`) so they won't get added as tags (For me this was easier to do once everything was already imported to Bear).

# What the script does

- We change the creation/modification dates of the downloaded notes so their date/times will get imported into Bear.
