# Guest Post Footprint Checker
Simple Bash script that checks a list of URLs or domains for known guest post footprints using cURL and saves the results to a CSV.

## Why do I need this?
Google started to go after links from obvious guest posts. You need this script if:

- You were hit by a manual action (unnatural inbound links) and want to recover
- You're buying links and want to make sure you only get low-risk placements without footprints
- You're an agency, link builder or guest post vendor and want to make sure you only offer safe links to your clients

## Requirements
Just Bash and cURL.

## How do I run this?
1. Download the repository
2. Add the URLs or domains you want to check to `urls.txt` (one per line)
3. Customize footprints you want to check for by editing `footprints.txt` (one per line - optional step)
4. Open a command line and navigate to the directory that contains the script and the txt files using `cd targetdirectory` to change directory and `ls -l` to list current files and directories
5. Type `bash guest-post-footprint-checker.sh`, hit enter and wait until it's done
6. Open `output.csv` with Excel to view the results

### Linux
You already have everything you need. Just follow instructions above.

### Mac OS
You already have everything you need. Just follow instructions above.

### Windows
Follow [this tutorial](https://itsfoss.com/install-bash-on-windows/) to get Bash working on Linux (use Ubuntu for that). Then follow instructions above. You could also run this on a Linux server, inside a Linux VM, or use dual boot instead.
