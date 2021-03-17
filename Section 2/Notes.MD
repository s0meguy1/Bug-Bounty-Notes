Section 2.1:<br>
Google Dorks references:
https://github.com/obheda12/GitDorker/blob/master/Dorks/alldorksv3


Section 2.3:<br>
Using AMass with HTTPx and nuclei:<br>
amass enum -passive -norecursive -d disa.mil -o domain ; httpx -l domain -silent -threads 10 | nuclei -t ./nuclei-templates/ -o result -timeout 30 <br>

httpx download<br>
https://github.com/projectdiscovery/httpx/releases/

Installing httpx after download:<br>
tar zxf ./DOWNLOADED-FILE<br>
mv ./httpx /usr/bin/share

nuclei templates:<br>
https://github.com/projectdiscovery/nuclei-templates<br>
installing:<br>
git clone https://github.com/projectdiscovery/nuclei-templates.git<br>
