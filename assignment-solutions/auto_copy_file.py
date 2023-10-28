import os
import shutil

def copy_selected_files(source_dir, dest_dir, file_list):
    for file in file_list:
        source_path = os.path.join(source_dir, file)
        dest_path = os.path.join(dest_dir, file)

        try:
            shutil.copy2(source_path, dest_path)
            print(f"Copied {file} to {dest_dir}")
        except FileNotFoundError:
            print(f"Error: {file} not found in {source_dir}")
        except FileExistsError:
            print(f"Error: {file} already exists in {dest_dir}")

if __name__ == "__main__":
    source_dir = input("Enter the source directory path: ")
    dest_dir = input("Enter the destination directory path: ")

    if not os.path.exists(source_dir) or not os.path.exists(dest_dir):
        print("Source or destination directory does not exist.")
        exit(1)

    file_list = input("Enter the names of files to copy (separated by spaces): ").split()

    copy_selected_files(source_dir, dest_dir, file_list)

