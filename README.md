# Prework - Background Color Randomizer

Submitted by: Aisha Fathalla

**Background Color Randomizer** is an app that displays three label elements and a button that triggers a logic to change the background color to a random color. It also adjusts the labels text color to black/white to best match the randomly selected background color.

Time spent: **2** hours spent in total

## Required Features

The following **required** functionality is completed:

- [X] Users are see a screen with three labels and a button
- [X] Tapping the button changes the screen color to a random color
 
## Video Walkthrough

[Click here for Youtube video of app walkthrough](https://youtu.be/IvwiOT66hsU)


## App Brainstorming (Step 4)
1. Favorite apps and favortie features:
- Snapchat:
location sharing
one time view pictures

- Telegram:
scheduled messages
chats archive

- Books:
Saves progress
folders and organization

2. App idea brainstorming:
I want to build a simple productivity app that allows users to create to-do lists categorized by topics such as work, personal, or fitness. Tasks are visually embedded within a calendar, making it easy to see deadlines and plan ahead. Users can also share specific lists with friends or colleagues, enabling collaboration on shared tasks and projects.


## Notes

Challenges:
Navigating through the IDE took a bit for me to get familiar with it. It is more visual than I am used to. For example, the story board file did not make a lot of sense to me until I viewed it as an xml source code file.

Additions:
Since the background color we are generating is based on random values, some of the colors did not look great with the black colored labels text. I wanted to find a way to modify the text color to white or black appropriately as better matches the background color. To do so, I wrote an additional function `adjustLabelColor()` that I call right after `changeColor()` takes action due to the button being clicked. In the `adjustLabelColor()` function I calculated the luminance of the background color and set the text color to white if the background is dark or black if the background is light, ensuring better contrast and readability.


## License

    Copyright [2025] [Aisha Fathalla]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
