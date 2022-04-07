
# EXERCISE 14 . 2

# Create and Interact with a CodeCommit Repository

In this exercise, you’ll create a CodeCommit repository and learn how to use Git to work with it.

1. On the same machine on which you installed the AWS CLI, download Git from git-scm.com and install it.

2. Use the following AWS CLI command to create a repository named myrepo:

~~~bash
aws codecommit create-repository --repository-name myrepo
~~~

You should see output listing the URL and ARN of the repository, like so:

~~~json
{
    "repositoryMetadata": {
        "repositoryName": "myrepo",
        "cloneUrlSsh": "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myrepo",
"lastModifiedDate": 1540919473.55,
        "repositoryId": "f0d6111a-db12-461c-8bc4-a3727c0e8481",
        "cloneUrlHttp": "https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myrepo",
"creationDate": 1540919473.55,
        "Arn": "arn:aws:codecommit:us-east-1:xxxxxxxxxxxx:myrepo",
        "accountId": "xxxxxxxxxxxx"
    }
}
~~~

~~~bash
aws codecommit create-repository --repository-name repositoriodetestecapitulo14
~~~

3. In the IAM Management Console, create a new IAM policy by importing the AWSCodeCommitPowerUser policy. For the CodeCommit service permissions, specify as the resource the repository’s ARN from step 2. Give the policy a name of your choice, such as CodeCommit-myrepo-PowerUser.

4. Create a new IAM user with programmatic access. Assign the user the policy you created in step 3.

5. In the IAM Management Console, click Users on the menu on the left and then click the name of the user you just created.

6. Select the Security Credentials tab.

7. Under HTTPS Git Credentials For AWS CodeCommit, click the Generate button. Note the username and password that IAM generates.

8. At a command prompt, issue the following command to clone the myrepo repository:
git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myrepo
This is the same URL you saw in step 2.

9. Git will prompt you for the username and password IAM generated in step 7. Enter these and you should see output indicating that Git successfully cloned the repository, as follows:
Cloning into 'myrepo'...
Username for 'https://git-codecommit.us-east-1.amazonaws.com': user-at-xxxxxxxxxxxx
Password for 'https://user-at-xxxxxxxxxxxx@git-codecommit.us-east-1.amazonaws.com':
warning: You appear to have cloned an empty repository.
Checking connectivity... done.

10. Descend into the local repository by typing cd myrepo.

11. Before you can add files to the local repository, you’ll need to set up Git by configuring a name and email address. These can be anything you want, but Git does require them to be set as shown in the following two commands (replace the values in quotes to a username and email address that you prefer):
git config user.name "Ben Piper"
git config user.email ben@benpiper.com

12. Create a file to add to the repo by entering echo test > file.txt.

13. Instruct Git to stage the file for addition to the local repository by typing 
git add file.txt.

14. Commit the changes to the repository by typing git commit -m "Add file .txt". The text in quotes can be whatever you want but should be a description of the changes you’ve made. You should see output similar to the following: 
[master (root-commit) bc914ea] Add file.txt
1 file changed, 1 insertion(+)
create mode 100644 file.txt

15. Push the changes up to the CodeCommit repository using the command git push.
Git will prompt you for your Git credentials. Once you’ve entered them successfully,
Git will display output similar to the following:
Counting objects: 3, done.
Writing objects: 100% (3/3), 218 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myrepo
* [new branch] master -> master

16. Go to the CodeCommit Management Console and click Repositories on the menu on the left.

17. Click the myrepo repository. You should see the file named file.txt.

