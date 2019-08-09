"""Actions to be run after a successful Cookie bake."""
import glob
from pathlib import Path
from urllib.request import Request, urlopen


def run():
    """Actions to be run."""
    req = Request(
        url="https://www.gitignore.io/api/node,composer",
        headers={"User-Agent": "Python"},
    )
    Path("../.gitignore").write_bytes(urlopen(req).read())

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

    for path in glob.glob("../**/.cookiecutter-keep", recursive=True):
        Path(path).unlink()


run()
