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

| Setting               | Default        | Description                                                                          |
| --------------------- | -------------- | ------------------------------------------------------------------------------------ |
| name                  | Sample App     |                                                                                      |
| short_name            | sampleapp      | Text                                                                                 |
| author                | Sample Data    | Text                                                                                 |
| website               | Sample Data    | Text                                                                                 |
| category              | lightning_app  | Text                                                                                 |
| short_description     | sampleapp      | Text                                                                          |
| description           | sampleapp      | Text        |
| targz_download_url    | sampleapp      | Text        |
| install_env_vars      | sampleapp      | Text        |
| supports_app_page | sampledata | Text |
| supports_testnet | sampledata | Text |
| http_port | sampledata | Text |
| https_port | sampledata | Text |
| requires_bitcoin | sampledata | Text |
| requires_docker_image_installation | sampledata | Text |
| requires_electrs | sampledata | Text |
| requires_lightning | sampledata | Text |
| show_on_application_page | sampledata | Text |
| show_on_homepage | sampledata | Text |
| show_on_status_page | sampledata | Text |
| hide_status_icon | sampledata | Text |
| app_tile_name | sampledata | Text |
| app_tile_running_status_text | sampledata | Text |
| app_tile_button_text | sampledata | Text |
| app_tile_button_href | sampledata | Text |
| app_page_show_open_button | sampledata | Text |
| app_page_content | sampledata | Text |
| can_uninstall | sampledata | Text |
| can_reinstall | sampledata | Text |
| can_enable_disable | sampledata | Text |
| is_beta | sampledata | Text |
| is_premium | sampledata | Text |
| homepage_order | 91 | Text |
| app_type | custom | Text |
| sdk_version | 1 | Text |

** Sample Application Data JSON **
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