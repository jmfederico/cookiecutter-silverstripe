import os
import shutil
import subprocess

if (
    "{{ cookiecutter.generate_docker }}" == "Yes"
    and "{{ cookiecutter.docker_cookiecutter }}".strip()
):
    subprocess.call(
        [
            "cookiecutter",
            "{{ cookiecutter.docker_cookiecutter }}",
            "project_name={{ cookiecutter.project_name }}",
            "project_slug={{ cookiecutter.project_slug }}",
            "project_title={{ cookiecutter.project_title }}",
        ],
        cwd=os.path.abspath(os.pardir),
    )

    # Public folder is for us to populate.
    shutil.rmtree("../public", ignore_errors=True)
