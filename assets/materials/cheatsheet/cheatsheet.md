*(outer front)*
#Rails Girls
#Cheat Sheet



*(inner left)*

###Terminal (Command Prompt)

**Note:** we have printed the main commands in **bold**; the **$** just means that the command is typed in the terminal. 
Most commands are **relative to the folder you are in**, unless you use 
absolute paths (like: /Users/your_name/this_directory/another_directory)

List contents of current directory  
  **$ ls**  
  **$ dir** (Windows)  

List contents of a specific directory  
  **$ ls** directory_name  
  **$ dir** directory_name (Windows)  

Change directory to specified directory  
  **$ cd** directory  
  **$ cd** directory_one/directory_two  

Move up one directory (change directory to parent dir)  
  **$ cd ..**

Create a new directory in the folder you’re in  
  **$ mkdir** new_directory

Path to directory you are currently in  
  **$ pwd**

Delete a file  
  **$ rm** filename  
  **$ del** filename (Windows)  

Delete a directory  
  **$ rm -r** directory_name  
  **$ rd** directory_name (Windows)  

Autocomplete a command  
  by using your tab key

To view past commands  
  use your up and down arrows 



*(inner right)*  

###Rails Basics

**Note:** we have printed the main commands in **bold**. 
Commands or keyboard combinations that start with **$** are used in your 
terminal & lines that don’t start with a $ are used in your text editor.

Start your server  
  **$ rails server**

Stop your server  
  **$** Ctrl + C
  
Check your installed rails version  
  **$ rails -v**

Create a new rails app  
  **$ rails new** my_awesome_new_app

View all rails generators  
  **$ rails generate**
 
Installing gems  
  **$ gem install** gem_name

Update all the gems in your Gemfile  
  **$ bundle update**

Create a new (empty) migration  
  **$ rails generate migration** AddNameToUsers 

Fill your migration file accordingly  
  class AddNameToUsers < ActiveRecord::Migration  
        def change  
              add_column :users, :name, :string  
      end  
  end

Run your migration(s)  
  **$ rake db:migrate**

Ooops! Rollback the last migration, because you forgot something!  
  **$ rake db:rollback**

*(outer back)*

###Git Basics

**Note:** we have printed the main commands in **bold**.  
Commands that start with **$** are used in your terminal - we will assume the branch you are working on is called master and the remote is called origin.

Install git  
  Get information here: http://git-scm.com
  
First-time git configuration (global)  
  **$ git config --global user.name** ”Your Name”  
  **$ git config --global user.email** your_email@address.com

Check your configuration settings  
  **$ git config --list**

Get all the help you need  
  **$ git help**
 
Initialise a repository in an existing directory  
  **$ git init**

Add a remote repository with name origin on GitHub  
  **$ git remote add origin** https://github.com/user/repo.git

Verify your remote  
  **$ git remote -v**

Add your file to the staging area  
  **$ git add** your_file

Check the status of your files  
  **$ git status**

Commit your changes  
  **$ git commit -m** ”Add a commit message here”

Fix your last commit (run command after making new changes to files)  
  **$ git commit --amend**

Push your committed changes from branch master to remote origin  
  **$ git push origin master**


