Overview:
The Eco Tracker app is designed to help users monitor and reduce their carbon footprint by logging daily activities, providing personalized recommendations, tracking progress, and engaging with a community focused on environmental sustainability. The app is built using Flutter, leveraging Firebase for authentication and data storage.

Key Features:
Activity Logging:

Users can log daily activities such as transportation methods, energy usage, diet, and waste production.
Integration with GPS and other sensors for automatic tracking of travel and activity patterns (not implemented in the basic example but can be added later).
Carbon Footprint Calculator:

Calculate the carbon footprint based on logged activities.
Provide a breakdown of different sources of carbon emissions.
Personalized Recommendations:

Offer actionable suggestions to reduce carbon footprint, like switching to public transport, reducing meat consumption, recycling tips, etc.
Tailored advice based on the user’s lifestyle and habits.
Progress Tracking:

Visualize the user’s progress over time with graphs and charts.
Set and track goals for reducing carbon footprint.
Community Features:

Join challenges with friends or the community to reduce environmental impact.
Share achievements and tips with the community.
Educational Content:

Articles, tips, and news related to environmental sustainability.
Quizzes and interactive content to educate users about environmental issues.
Gamification:

Earn badges and rewards for achieving milestones.
Leaderboards to compare progress with friends and community members.
Integration:

Sync with other fitness and health apps to gather data seamlessly.
Integration with smart home devices to monitor and suggest energy-saving tips.
Alerts and Reminders:

Push notifications to remind users to log their activities.
Alerts for reaching high carbon emission levels and suggestions to mitigate them.
Implementation Details:
1. Activity Logging Screen:

A form where users can log their activities.
Input fields for activity type, amount, and date.
Data is saved using a DataService with SharedPreferences for persistence.
2. Recommendations Screen:

Displays personalized recommendations to users.
Static list of recommendations for demonstration purposes.
3. Progress Screen:

Visualizes the user’s progress over time using charts.
Data is retrieved from SharedPreferences and displayed using charts_flutter.
4. Community Screen:

Displays a list of community posts and achievements.
Static list of posts for demonstration purposes.
5. Educational Content Screen:

Displays educational articles and tips.
Static list of articles for demonstration purposes.
6. Firebase Integration:

User authentication using Firebase Auth.
User data management using Firestore.
Prefix used to avoid naming conflicts between Firebase User and app User.
UI Design:
Theme: A combination of purple and green for a vibrant and eco-friendly look.
Home Screen: Buttons to navigate to different features, styled with the theme colors.
AppBar: Consistent green color across the app for a unified look.
Buttons: Alternating purple and green buttons to create a visually appealing interface.
