Section 2.1:
Google Dorks references:
https://github.com/obheda12/GitDorker/blob/master/Dorks/alldorksv3


Section 2.3:
Using AMass with HTTPx and nuclei:
amass enum -passive -norecursive -d disa.mil -o domain ; httpx -l domain -silent -threads 10 | nuclei -t ./nuclei-templates/ -o result -timeout 30 

httpx download
https://github.com/projectdiscovery/httpx/releases/

Installing httpx after download:
tar zxf ./DOWNLOADED-FILE
mv ./httpx /usr/bin/share

nuclei templates:
https://github.com/projectdiscovery/nuclei-templates
installing:
git clone https://github.com/projectdiscovery/nuclei-templates.git
