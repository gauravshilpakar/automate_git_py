'''
Gaurav Shilpakar
Januray 2020
'''
import os
from github import Github

# enter your GIT USERNAME and passwords as strings
USERNAME = ""
PASSWORD = ""
G = Github(USERNAME, PASSWORD).get_user()


def main():
    '''
    Gets the current directory and assigns the last folder to the repo_name
    '''
    curr_dir = os.getcwd()
    repo_name = curr_dir.split('\\')[-1]
    G.create_repo(repo_name)


if __name__ == "__main__":
    main()