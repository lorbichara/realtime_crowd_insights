# Realtime Crowd Insights

[![Maintainability](https://api.codeclimate.com/v1/badges/da71592131fb15bceb70/maintainability)](https://codeclimate.com/github/ProyectoIntegrador2018/realtime_crowd_insights/maintainability)

Mobile application (IOS) to obtain demographic information of the analysis of people in images using Azure's facial recognition API.

## Table of contents

* [Client Details](#client-details)
* [Environment URLS](#environment-urls)
* [Da Team](#da-team)
* [Management tools](#management-tools)
* [Technology stack](#technology-stack)
* [Setup the project](#setup-the-project)
* [Running project for Desktop Simulation](#running-project-for-desktop-simulation)
* [Running project for Mobile Simulation](#running-project-for-mobile-simulation)
* [Stop the project](#stop-the-project)

### Client Details

| Name               | Email             | Role |
| ------------------ | ----------------- | ---- |
| Aldo Lares | alares@bluepeople.com | Sales Analysis Manager  |


### Environment URLS

* **Development** - [Github](https://github.com/ProyectoIntegrador2018/realtime_crowd_insights)

### Da team

| Name           | Email             | Role        |
| -------------- | ----------------- | ----------- |
| Lorraine Bichara Assad | A01193063@itesm.mx | Development / Product Owner Proxy |
| Mauricio Juan Garcia Amaya | A01193289@itesm.mx | Development / Administrador del Proyecto |
| Miguel Bazán Aviña | A01281010@itesm.mx | Development / Scrum Master |
| Miguel Angel Rocha Cabello | A01281368@itesm.mx | Development / Administrador de Configuración |

### Management tools

You should ask for access to this tools if you don't have it already:

* [Github repo](https://github.com/ProyectoIntegrador2018/realtime_crowd_insights.git)
* [Backlog](https://github.com/ProyectoIntegrador2018/realtime_crowd_insights/issues)
* [Documentation](https://drive.google.com/drive/folders/1y1KpT7vFpG4_QRMRK7sWLa76lrSAd-c-)

## Development
### Technology stack
* Swift 5 (Xcode 11 as the IDE)
* [Azure Face API](https://azure.microsoft.com/en-us/services/cognitive-services/face/)

### Setup the project

Make sure you have the following:

* MacOS Machine cabaple of running Xcode (version 10.1 or newer).
* Install developer tools

1. To install developer tools run:

```bash
$ xcode-select --install
```
2. You will be prompted for an agreement and permissions, say yes.

After installing, clone the repository into your machine:

3. Clone this repository into your local machine

```bash
$ git clone https://github.com/ProyectoIntegrador2018/realtime_crowd_insights.git
```

4. Azure's API requires an API key. This is a secret key that can be obtained from Azure's portal.
Create a file called ApiKeys.plist with the following content:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>API_SECRET</key>
	<string>YOUR-API-KEY-HERE</string>
</dict>
</plist>
```
Add this file to your local folder at the same level where the ApiKeys.swift file is located, and inside Xcode, go to File > Add files to "realtime_crowd_insights_sb" and select the file to add it to the project. Make sure this file doesn't get added to the repo, or the keys will have to be restored.

### Running project for Desktop Simulation

1. Fire up the project from the downloaded folder

2. Specify the iPhone model for the simulation, near the Run Button

3. Run the project

Xcode should open and run the project like normal.

### Running project for Mobile Simulation

1. Fire up the project from the downloaded folder

2. Plug the mobile device into the computer

3. Select the device

4. Unlock the device and run the application

#### Troubleshooting Common Errors

* **Signing Requires a Development Team** - Xcode requires that you've connected a Team to your project in order to run. Go to "General" tab of the Project Settings, open the "Team" menu and select your team, in case you dont have a team, select "Add an Account..." and create one with your Apple ID.

### Stop the project

In order to stop the simualtion you can just click the stop button on top of the project. 
