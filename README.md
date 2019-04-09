Importing from Google Keep

In terminal navigate to the Takeout/Keep/ folder & run this
`sed -i '' -e 's|<span class="label-name">|<span class="label-name">#|g' *.html`

Replace /path/to with the correct path to these files
`python /path/to/set_time.py /path/to/Takeout/Keep/*.html`

Then import all the html files into Bear, checking "Keep original dates" and "Use file name as title".
