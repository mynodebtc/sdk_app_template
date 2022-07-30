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
This is the folder for HTML / Jinja templates to be used by your application. A sample template (sampleapp.html) is provided, but may not be required. Applications can use the standard app template which can be customized via the JSON file, but more advanced apps may require their own templates.

### nginx/https_sampleapp.conf
This file is optional and will be present if your app has a web interface and can be accessed via HTTPS. It may need to be updated depending on your application requirements.

## Application Data

All application data is managed via a JSON file stored in the main application folder. A variety of settings allow control of the application, its dependencies, and how it appears within myNode. Below is a table of the available settings and a description.

| Setting                    | Type / Default         | Description                                                               |
| -------------------------- | ---------------------- | ------------------------------------------------------------------------- |
| <sub>name                  | <sub>Sample App        | <sub>This is the display name of the application. Shown on the Marketplace and Manage Apps pages. |
| <sub>short_name            | <sub>sampleapp         | <sub>This is the "name id" of the app. It identifies the app, its files and its folders. |
| <sub>author                | <sub>Dictionary        | <sub>This defines the "Author" item on the app's Marketplace page. It must contain a "name" and an optional "link" field. |
| <sub>website               | <sub>Sample Data       | <sub>This defines the "Website" item on the app's Marketplace page. It must contain a "name" and an optional "link" field. |
| <sub>category              | <sub>lightning_app     | <sub>This defines the section the app appears within the Marketplace. Options are bitcoin_app, lightning_app, networking, and device_management. |
| <sub>short_description     | <sub>Sample Data       | <sub>This defines the short description of the app on an app tile before it is enabled. Ideally, it should be less than 20 characters. |
| <sub>description           | <sub>Sample Data       | <sub>This is the long description of an application that is displayed on the app's Marketplace page. It can be a single string or a list of strings to be displayed as paragraphs. |
| <sub>targz_download_url    | <sub>Sample Data       | <sub>This is the URL to download the application and is typically a link to the GitHub tar.gz file for a tag or release. It will be extracted and installed prior to running the apps install script. |
| <sub>install_env_vars      | <sub>Dictionary        | <sub>If any additional data is needed during the install process. This dictionary of key/value pairs will be available as env variables. |
| <sub>supports_testnet      | <sub>false             | <sub>Indicates if the app supports Bitcoint testnet. If not, the app will be disabled when in testnet mode. |
| <sub>http_port             | <sub>8000              | <sub>Indicates the HTTP port to be used by the application. This should be set for all web apps. The port will be automatically opened. |
| <sub>https_port            | <sub>8001              | <sub>Indicates the HTTPS port to be used by the application. Typically, the HTTP port plus one. |
| <sub>requires_bitcoin      | <sub>true              | <sub>This indicates a dependency on Bitcoin. If true, Bitcoin must be running before the application will start. This should be true for most apps. Some device management apps may set this to false. |
| <sub>requires_docker_image_installation | <sub>false | <sub>This indicates a dependency on Docker. If true, the app runs as a Docker container and is installed by the docker image install script. |
| <sub>requires_electrs      | <sub>false             | <sub>This indicates a dependency on Electrum Server. If true, Electrum Server must be enabled and running before the app can be enabled and started. |
| <sub>requires_lightning    | <sub>true              | <sub>This indicates a dependency on Lightning. If true, Lightning must be setup and running before the app can be enabled and started. |
| <sub>show_on_application_page | <sub>true           | <sub>This toggles whether or not the app is displayed in the list of apps on the Manage Applications page. |
| <sub>show_on_homepage      | <sub>true              | <sub>This toggles whether or not the app is displayed as a tile on the homepage. |
| <sub>show_on_status_page   | <sub>true              | <sub>This toggles whether or not the app is shown on the status page. All apps that have a log available should have this set to true. |
| <sub>hide_status_icon      | <sub>false             | <sub>This toggles whether or not the status icon (color dot) is displayed for the application. This should be false for all applications that run as a service. |
| <sub>app_tile_name         | <sub>"Sample Application" | <sub>This defines the disaply name of the application on the app tile on the home page. Some apps require a shorter name to fit on the app tile.  |
| <sub>app_tile_running_status_text | <sub>"Running"  | <sub>This defines the status text of an application when it has been enabled and is running properly according to systemd. |
| <sub>app_tile_button_text  | <sub>"Info"            | <sub>This defines the text of the link displayed in the application tile on the home page. |
| <sub>app_tile_button_href  | <sub>"/app/sampleapp/info" | <sub>This defines the destination of the link displayed on the application tile on the home page. |
| <sub>app_page_show_open_button | <sub>true          | <sub>This toggles whether or not the Open button is displayed on the application page. It should be true or web-based applications. |
| <sub>app_page_content      | <sub>Sample Data       | <sub>This defines the application page content if using the generic application page (ex. /app/[app]/info). It is a list of dictionaries with two items - heading and content. Content can be a list of string to be displayed as paragraphs. |
| <sub>can_uninstall         | <sub>true              | <sub>Indicates if the application can be uninstalled. |
| <sub>can_reinstall         | <sub>true              | <sub>Indicates if the application can be re-installed. |
| <sub>can_enable_disable    | <sub>true              | <sub>Indicates if the application is a service that can be enabled and disabled. |
| <sub>is_beta               | <sub>false             | <sub>Indicates if an app is "beta" quality. If true, adds a beta icon in the UI. |
| <sub>is_premium            | <sub>false             | <sub>Indicates if this app is available only for premium users. |
| <sub>homepage_order        | <sub>91                | <sub>This dictates the order of apps shown on the home page. Should be 91+. |
| <sub>app_type              | <sub>custom            | <sub>This indicated the type of application. For future use. |
| <sub>sdk_version           | <sub>1                 | <sub>This indicated the SDK version that this app supports. Primarily for future use. |

<br/>

**Sample Application Data JSON**
<details>
  <summary>Expand</summary>

```json
{
    "name": "Sample Application",
    "short_name": "sampleapp",
    "author": {"name": "sampleapp author", "link":""},
    "website": {"name": "GitHub", "link": "https://github.com/FILL_IN_GITHUB_USER/FILL_IN_GITHUB_PROJECT"},
    "category": "lightning_app",
    "short_description": "Fill in short description",
    "description": [
        "Fill in longer description"
        ],
    "latest_version": "v0.0.1",
    "targz_download_url": "https://github.com/FILL_IN_GITHUB_USER/FILL_IN_GITHUB_PROJECT/archive/refs/tags/{VERSION}.tar.gz",
    "install_env_vars": {},
    "supports_app_page": true,
    "supports_testnet": false,
    "http_port": "8000",
    "https_port": "8001",
    "requires_bitcoin":true,
    "requires_docker_image_installation":false,
    "requires_electrs":false,
    "requires_lightning":true,
    "show_on_application_page": true,
    "show_on_homepage": true,
    "show_on_status_page": true,
    "hide_status_icon": false,
    "app_tile_name": "Sample Application",
    "app_tile_running_status_text": "Running",
    "app_tile_button_text": "Info",
    "app_tile_button_href": "/app/sampleapp/info",
    "app_page_show_open_button": true,
    "app_page_content": [
        {"heading": "Instructions",
            "content": [
            "Add general usage instructions here. You can open the app with the Open button on the left (if web based).",
            "For more custom content, update the template and python files under the 'www' folder.",
            "Paragraph 3",
            "Paragraph 4",
            "Enjoy!"
            ]}
        ],
    "can_uninstall": true,
    "can_reinstall":true,
    "can_enable_disable": true,
    "is_beta": false,
    "is_premium": false,
    "homepage_order": 91,
    "app_type": "custom",
    "sdk_version": 1
}
```
</details>