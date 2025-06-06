# Course Hub - Solution

Welcome to the **Course Subscription Application**!, A simple ServiceNow prototype that allows **Learners** to view and subscribe to **Courses** using the platform's native capabilities such as tables, UI Builder, Data Resources, and UX Components.


## Application Overview

The application **CourseHub** is built on the **ServiceNow Now Experience Framework** and showcases:
- A Simple Dashboard to view recently added courses and some user-specific insights
- A list of available courses (List View)
- A detailed view of selected course (Form View)
- The ability for users (learners) to subscribe or unsubscribe

#### - UI tailored using Service Now **UI Builder**
#### - UI functionality tests using **Robot Framework** 


### Data Tables

The application consists of 4 main tables:

1. **Course** (`x_quo_coursehub_course`)
2. **Learner** (`x_quo_coursehub_learner`)
3. **Course Subscription** (`x_quo_coursehub_course_subscription`)
4. **Course Feedback** (`x_quo_coursehub_course_feedback`)

All the tables come with default fields: `sys_id`, `created`, `created_by`, `updated`, `updated_by`.

## 🧩 Key Features


### 📊 Simple Dashboard

- Display the count of active courses
- Display the Count of Own Subscriptions
- Display recently added courses (Sorted by CreatedDate Desc)

📷 ![Dashboard UI](./screenshots/dashboard-ui.png)

### 📚 Course Listing

- A **List View** displaying all available courses using **x_quo_coursehub_course** table.
- Fields shown: **Number**, **Title**, **Description**, **Duration**.
- **Subscribe** button is visible when a Course is selected. The button is **Hidden** when logged-in user is already subscribed to the Course.

📷 ![Course List UI](./screenshots/course-list-ui.png)

---

### ✅ Course Subscription Logic


  #### 1. Traditional Subscribe Button
  📷 ![Subscribe Button Action](./screenshots/subscribe-action.png)
  - Only visible if the logged-in user is not subscribed to a course.
  - Clicking "Subscribe" button proceeds a scenario that creates a record in the **Course Subscription** table.
  - A popup model opens after hitting Subscribe button to confirm your action. 📷 ![Subscribe Confirm Model](./screenshots/subscribe-confirm-model.png)
  
    
  #### 2.  **Unsubscribe** button 
  📷 ![Unsubscribe Action](./screenshots/unsubscribe-action.png)
  - Only visible if the logged-in user is already subscribed to the selected Course.
  - Clicking "Unsubscribe" button proceeds a scenario that deletes a record from the **Course Subscription** table.
  - A popup model opens after hitting Unsubscribe button to confirm your action. 📷 ![Unsubscribe Confirm Model](./screenshots/unsubscribe-confirm-model.png)

  #### 3. A feedback can be provided when unsubscribing a Course
  📷 ![Subscribe Button Action](./screenshots/post-feedback.png)
  - A popup model opens after confirming Unsubscribe through Unsubscribe Confirmation model.
  - A StarRating input and Text area is visible inside a custom model to insert a new feedback record to  **Course Feedback** table
  - Posting feedback can be skipped from the Skip button available in the model popup. 


### 🔒 Duplicate preventions
  - Subscribe button is visible only by checking the **Course Subscription** table for selected course and session-user.
  - Record creation action will validate the **Course Subscription** table beforehand creating a new record whether it already exists through a Client Script.
  - This Prevents duplicate subscriptions.


---

### 👤 My Subscriptions
- Shows the learner's own subscriptions
- Data is filtered using a **Lookup Multiple Records** data source
- Conditional visibility is used to match course `sys_id` to subscription records

📷 ![My Subscriptions UI](./screenshots/my-subscriptions.png)

---

## 🧪 Testing

Automated tests for UI testing have been developed using Robot Framework and are included in the /tests directory. These tests help ensure reliability across key application features. Below is an overview of the implemented test cases along with their internal structure and logic.

####  1. Login Functionality Test
Purpose: To validate that users can log in successfully using correct credentials.

Test Steps:
  1. Navigate to the login page.
  2. Input valid username and password.
  3. Submit the form.
  4. Verify that the user is redirected to the landing page.
  5. Confirm the presence of user-specific elements.

####  2. Invalid Login Test
Purpose: To ensure that the system handles incorrect login attempts properly.

Test Steps:
  1. Navigate to the login page.
  2. Enter invalid credentials.
  3. Attempt to log in.
  4. Check for error message loaded in a toast banner.

####  3. Subscribe Button Visibility Test (New Courses)
Purpose: To verify that the "Subscribe" button is shown only for new (non-subscribed) courses.

Test Steps:
  1. Log in as a user who has not subscribed to a particular course.
  2. Navigate to the course listing or course detail page.
  3. Check that the "Subscribe" button is visible and enabled.

####  4. Subscribe Button Click and Modal Display Test
Purpose: To validate the functionality of the "Subscribe" button and subsequent UI feedback.

Test Steps:
  1. Click on the visible "Subscribe" button for a course.
  2. Wait for the modal or confirmation dialog to appear.
  3. Verify that modal content is present and correct.

####  5. Unsubscribe Button Visibility Test (Subscribed Courses)
Purpose: To ensure the "Unsubscribe" button appears for courses the user has already subscribed to.

Test Steps:
  1. Log in as a user who is already subscribed to a course.
  2. Navigate to the relevant course page.
  3. Confirm the presence and visibility of the "Unsubscribe" button.

### Support

📝 Setup Instructions

- Clone the repo via ServiceNow Studio or Source Control
- Install on your instance (Scoped App)
- Navigate to UI Builder and open the Course Subscription page
- Preview and test via Workspace

🙋‍♂️ Contributors
   - Hasitha Nawalage – https://www.linkedin.com/in/hasitha-chandana/
   - Contact: hasithacnawal@gmail.com




