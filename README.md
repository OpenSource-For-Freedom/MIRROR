<div align="center">

# MIRROR  
Testing Repo for Github DevOps  

<img src="./world.GIF" alt="world gif" />

<img src="./party-parrot.gif" alt="Party Parrot" />

🎉 Let's get this party started! 🎉

</div>


## Github Mirror Overview
- Mirroring a Repo allows the collection of all`refs/heads` and new branches brought into the "target repo"
- Collecting this code, will allow you to stay fully up to date with your private needs.

## Commands

```
#!/bin/bash
# Easy Mirror Script
SOURCE_REPO="https://github.com/OpenSource-For-Freedom/MIRROR.git"
TARGET_REPO="https://github.com/your-org/target-repo.git"

git clone --mirror "$SOURCE_REPO" temp-mirror
cd temp-mirror
git remote add target "$TARGET_REPO"
git push --mirror --prune target
cd ..
rm -rf temp-mirror
```
# Test 3
