import glob
import urllib.request
from pathlib import Path

urllib.request.urlretrieve(
    "https://www.gitignore.io/api/node,composer", "../.gitignore"
)

# Move root files.
_root = Path("_root")
project_root = Path("..")
for child in _root.iterdir():
    child.rename(project_root / child.name)
_root.rmdir()


Path("../.gitignore").open("a").write(
    """
### Silverstripe ###
public/assets/
public/resources/
"""
)

for path in glob.glob('../**/.cookiecutter-keep', recursive=True):
    Path(path).unlink()
