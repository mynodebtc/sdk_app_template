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

<style scoped>
table {
  font-size: 12px;
}
</style>

| Setting               | Type / Default    | Description                                                               |
| --------------------- | ----------------- | ------------------------------------------------------------------------- |
| name                  | Sample App        | This is the display name of the application. Shown on the Marketplace and Manage Apps pages. |
| short_name            | sampleapp         | This is the "name id" of the app. It identifies the app, its files and its folders. |
| author                | Dictionary        | This controls the "Author" item on the app's Marketplace page. It must contain a "name" and an optional "link" field. |
| website               | Sample Data       | This controls the "Website" item on the app's Marketplace page. It must contain a "name" and an optional "link" field. |
| category              | lightning_app     | This controls the section the app appears within the Marketplace. Options are bitcoin_app, lightning_app, networking, and device_management. |
| short_description     | sampleapp         | Text |
| description           | sampleapp         | Text |
| targz_download_url    | sampleapp         | Text |
| install_env_vars      | sampleapp         | Text |
| supports_app_page     | true              | Text |
| supports_testnet      | false             | Text |
| http_port             | 8000              | Text |
| https_port            | 8001              | Text |
| requires_bitcoin      | true              | Text |
| requires_docker_image_installation | false | Text |
| requires_electrs      | false             | Text |
| requires_lightning    | true              | Text |
| show_on_application_page                  | true | Text |
| show_on_homepage      | true              | Text |
| show_on_status_page   | true              | Text |
| hide_status_icon      | false             | Text |
| app_tile_name         | "Sample Application" | Text |
| app_tile_running_status_text | "Running"  | Text |
| app_tile_button_text  | "Info"            | Text |
| app_tile_button_href  | "/app/sampleapp/info" | Text |
| app_page_show_open_button | true          | Text |
| app_page_content      | Sample Data       | Text |
| can_uninstall         | true              | Indicated if the application can be uninstalled. |
| can_reinstall         | true              | Indicates if the application can be re-installed. |
| can_enable_disable    | true              | Indicates if the application is a service that can be enabled and disabled. |
| is_beta               | false             | Indicates if an app is "beta" quality. If true, adds a beta icon in the UI. |
| is_premium            | false             | Indicates if this app is available only for premium users. |
| homepage_order        | 91                | This dictates the order of apps shown on the home page. Should be 91+. |
| app_type              | custom            | This indicated the type of application. For future use. |
| sdk_version           | 1                 | This indicated the SDK version that this app supports. Primarily for future use. |

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