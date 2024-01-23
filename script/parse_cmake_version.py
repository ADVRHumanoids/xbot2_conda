import re
import sys 

def parse_cmake_version(cmake_file_path):
    version_pattern = re.compile(r'\bversion\s+(\d+\.\d+\.\d+)\b', re.IGNORECASE)

    with open(cmake_file_path, 'r') as cmake_file:
        content = cmake_file.read()

    match = version_pattern.search(content)

    if match:
        return match.group(1)
    else:
        return None

if __name__ == '__main__':
    # Example usage:
    cmake_file_path = sys.argv[1]
    version = parse_cmake_version(cmake_file_path)

    if version:
        print(version)
    else:
        print('Version not found in CMakeLists.txt', file=sys.stderr)
