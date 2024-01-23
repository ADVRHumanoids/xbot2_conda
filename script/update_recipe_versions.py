import os
import sys
import yaml
import parse_cmake_version

def find_files_by_name(directory, file_name):
    matching_files = []

    for root, dirs, files in os.walk(directory):
        for file in files:
            if file == file_name:
                matching_files.append(os.path.join(root, file))

    return matching_files


directory_path = sys.argv[1]
file_to_find = 'recipe.yaml'

found_files = find_files_by_name(directory_path, file_to_find)

if found_files:
    print(f'Files found with the name "{file_to_find}":')
    for file_path in found_files:
        print(file_path)
else:
    print(f'No files found with the name "{file_to_find}" in the directory.')


for file in found_files:
    print(f'processing {file}..')
    recipe = yaml.safe_load(open(file, 'r'))
    cmakelists = os.path.join(os.path.dirname(file), recipe['source']['path'], 'CMakeLists.txt')
    print(f'  path to cmakelists:  {cmakelists}')
    try:
        ver = parse_cmake_version.parse_cmake_version(cmakelists)
        print(f"    detected version {ver}")
        # recipe['package']['version'] = str(ver)
        # yaml.safe_dump(recipe, open(file, 'w'))
    except FileNotFoundError:
        print(f"    not found")
    