import os

def list_relative_subfolders(folder_path):
    with open('GFSBUILDS.TXT', 'w') as outputs_file:
        for root, dirs, files in os.walk(folder_path):
            for subdir in dirs:
                subdir_path = os.path.relpath(os.path.join(root, subdir), folder_path).replace('\\', '/')
                outputs_file.write(subdir_path + '\n')
                print(subdir_path)

if __name__ == '__main__':
    main_folder = os.getcwd()  # Get the current working directory as the main folder
    list_relative_subfolders(main_folder)
    print("GFSBUILDS.TXT file created successfully.")
