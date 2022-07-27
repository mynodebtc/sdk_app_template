# SDK App Template
This repo holds the template for new myNode applications.

## SDK Repo
This template can be used for reference, but for new applications, the myNode SDK repo should be used which will automatically download the latest template and provide tools for packaging myNode apps.

https://github.com/mynodebtc/mynode_sdk

## Contents

The contents of each application are represented here. The name of this app is "sampleapp" and when used by the SDK project is automatically updated to be the name of the application being created. **Your filenames should be different.**

### sampleapp.png
This is the app icon. It should be updated to your app's icon. It must be a PNG file and should have a transparent background. If squarish, it should have rounded corners.

### sampleapp.json
This is the core file that controls your application information. It will require several updates. Details are specified in the Application Data section below.

### sampleapp.service
This is the systemd service file that will launch your application. It can be customised as necessary. Updating the "ExecStart" line is required.

### screenshots/*.png
All PNG files within the screenshots folder will be copied to the proper myNode folders to be displayed on the Marketplace page for the app.

### scripts/install_sampleapp.sh
This script is required. The script will be executed from within the application install directory. The install tarball will have already been extracted and files will be present in the current folder. Any steps to install the application must be performed in this script.

### scripts/uninstall_sampleapp.sh
This script must be present, but content it optional. By default, during uninstall will remove the app installation folder. This script will be run prior to deletion in case any special steps need to be performed.

### scripts/pre_sampleapp.sh
This script must be present, but content it optional. This script will run prior to launching the application.

### scripts/post_sampleapp.sh
This script must be present, but content it optional. This script will run after launching the application.

### www/python/sampleapp.py
This is the python file for handling web interface requests. The web interface is handled by flask and the file comes with a single hander for "/app/sampleapp/info". Additional URLs can be registered for more complex applications if they need to offer additional functionality.

### www/templates/
This is the folder for HTML / JINJA templates to be used by your application. A sample template (sampleapp.html) is provided, but may not be required. Applications can use the standard app template which can be customized via the JSON file, but more advanced apps may require their own templates.

### nginx/https_sampleapp.conf
This file is optional and will be present if your app has a web interface and can be accessed via HTTPS. It may need to be updated depending on your application requirements.

## Application Data

TODO