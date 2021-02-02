import os

def create_folder(foldername):
    try:
        os.mkdir('G:\\Camera/{}'.format(foldername))
    except:
        return "Folder Not Created"
    else:
        return "Folder Created"