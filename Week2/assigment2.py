import os
import shutil

file_name = input("Enter File name you want to move: ")
folder_path = "./"
full_file_path = os.path.join(folder_path, file_name)  # Use os.path.join to create a full file path
print(full_file_path)
destination_path = "../Week1/"

if os.path.exists(full_file_path):
    shutil.copy(full_file_path, destination_path)
    print("File copied to another folder successfully")
else:
    print("File not found or destination folder does not exist.")

    
