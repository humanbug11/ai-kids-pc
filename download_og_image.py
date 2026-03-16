import urllib.request
import re
import ssl

ssl._create_default_https_context = ssl._create_unverified_context
url = "https://note.com/kitchan_it/n/n556e64ec7d92"
req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
html = urllib.request.urlopen(req).read().decode('utf-8')

match = re.search(r'og:image.*?content=[\'"]([^\'"]+)[\'"]', html, re.IGNORECASE)
if match:
    img_url = match.group(1)
    print("Found image URL:", img_url)
    urllib.request.urlretrieve(img_url, "static/img/shabetto_app.png")
    print("Saved to static/img/shabetto_app.png")
else:
    print("Image not found")
