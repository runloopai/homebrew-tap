import os
import sys
import hashlib
import requests
from pkg_resources import parse_requirements

def get_package_url(package_name, version):
    url = f"https://pypi.org/pypi/{package_name}/{version}/json"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        for url in data['urls']:
            if url['packagetype'] == 'bdist_wheel' and 'py3' in url['filename']:
                return url['url'], url['digests']['sha256']
    return None, None

def generate_resources(requirements_file):
    with open(requirements_file, 'r') as f:
        requirements = f.read()

    resources = []
    for req in parse_requirements(requirements):
        package_name = req.name
        version = str(req.specifier).lstrip('=')
        url, sha256 = get_package_url(package_name, version)
        
        if url and sha256:
            resource = f"""
  resource "{package_name}" do
    url "{url}"
    sha256 "{sha256}"
  end"""
            resources.append(resource)
        else:
            print(f"Warning: Couldn't find wheel for {package_name}=={version}")

    return '\n'.join(resources)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py path/to/requirements.txt")
        sys.exit(1)

    requirements_file = sys.argv[1]
    if not os.path.exists(requirements_file):
        print(f"Error: File {requirements_file} not found.")
        sys.exit(1)

    resources = generate_resources(requirements_file)
    print(resources)
