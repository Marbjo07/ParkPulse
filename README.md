# ParkPulse

**ParkPulse** is an AI-powered map service designed to help sales teams locate residential and commercial parking areas directly from satellite images. This project was created to streamline the search for potential EV charging locations, replacing manual Google Maps searches with a faster, smarter, and more accurate solution.

**Why ParkPulse Was Created**
The idea for ParkPulse originated from a challenge faced by a sales team working for a company selling electric vehicle (EV) charging solutions to house associations. They were spending unnecessary amounts of time manually searching through Google Maps to locate residential buildings and house associations that might benefit from EV charging infrastructure.

The process was inefficient and time-consuming, which led to the question: _Can_ _we_ _make_ _this_ _faster_?

ParkPulse was developed to solve this problem. The goal was to reduce the sales team's time spent on google maps. The tool highlights potential clients quickly and accurately. By utilizing satellite imagery and advanced AI models, ParkPulse highlights parked residential cars and makes potential clients more visible.

### Features

- **AI-Driven Car Detection**: Using advanced deep learning models, ParkPulse automatically identifies and highlights parked cars in both commercial and residential areas. 
- **High Precision**: The system distinguishes between different types of vehicles (residential vs. commercial) and even includes the ability to locate personal-use garages.
- **Seamless Integration with Azure Maps**: ParkPulse leverages Azure Maps as the base satellite map, providing a high-quality visual experience.
- **User-Friendly Interface**: A simple web-based UI that allows users to filter car types, switch map styles, and focus on specific cities.
- **Automated House Association Lookup**: Clicking on any building returns the associated house association (BRF) name for easy access to potential customers.

### Technology Stack

- **AI Models**: 
  - Initially fine-tuned a ResNet model for car classification.
  - Upgraded to a UNet architecture for better performance in segmenting parked cars.
  - The latest version combines a YOLOv8 model, trained from scratch for classification and localization, with a finetuned SAM (Segment-Anything Model) for segmentation, ensuring more accurate results
- **Backend**: Flask server (soon to be migrated to Spring Boot with Kotlin) deployed via Docker.
- **Frontend**: Simple web-based UI offering map styles, filtering, and city selection.
- **Authentication**: Session-based authentication with user roles managed by a separate access control system (see ParkPulse-AccessManager).
- **Deployment**: Azure Pipeline is utilized to automaticly build and deploy the containers to their own Azure App Service after a commit. 

### Key Benefits

- **Speed**: Automated searches that outperform manual Google Maps exploration.
- **Accuracy**: Fine-tuned models distinguish between different types of parking and garages.
- **Scalability**: The app performs well on large datasets and can handle multiple city datasets concurrently.
- **Rapid Area Expansion**: Easily search and process hundreds of square kilometers of satellite imagery within hours, then simply grant users access.
  
### Comparison with Google Maps

| Feature                | Google Maps                    | ParkPulse                     |
|------------------------|---------------------------------|-------------------------------|
| Car Identification      | Manual                         | AI-Powered, Automated          |
| Parking Type Detection  | None                           | Locates and Differentiates Residential/Commercial |
| House Association Lookup| Manual                         | Automated BRF Lookup           |
| Speed of Search         | Slow                           | Fast, with AI and Azure Maps   |

*Check out the "malmö showcase.mp4" video to see the zero-shot performance on a city outside the training dataset.*

![Comparison Image](./path_to_comparison_image.png)

### Roadmap

- **Spring Boot Backend**: Ongoing migration from Flask to Spring Boot for improved performance and scalability.
- **Enhanced User Features**: Upcoming feature updates to refine the UI and provide more user options.

---

## Setup

This project uses submodules to integrate the `ParkPulse-Website` and `ParkPulse-AccessManager` repositories. Since I haven't made AI predictions public it's hard to recreate the project. But in essence is would be:

```bash
git clone https://github.com/Marbjo07/ParkPulse.git
cd ParkPulse
git submodule update --init --recursive
# define .env files, including creating a Azure Maps Account
# create a user with the correct permissions
docker compose -f docker-compose.dev.yml up --build
```

The build and deployment process is automated using Azure DevOps, with Docker containers for both the frontend and backend services. For full functionality, you'll need to deploy the entire stack.

For further details on each component, see the documentation in the relevant submodules:

[ParkPulse-Website](https://github/Marbjo07/ParkPulse-Website)
[ParkPulse-AccessManager](https://github/Marbjo07/ParkPulse-AccessManager)

## Screenshots

![image](images/screenshot.png)

## Technologies Used
- Docker
- Azure Maps
- Azure Pipelines
- Flask / Spring Boot (Kotlin)
- YOLOv8 and SAM for AI
- Microsoft Entra ID for authentication
- Session-based User Management

## Contact
For questions or more details, feel free to contact me via email at [marius.bjorhei@gmail.com](marius.bjorhei@gmail.com).


