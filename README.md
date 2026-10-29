# 🚀 TaskFlow – Task Management System (MERN Stack)

A complete, production-grade, and responsive full-stack **Task Management Web Application** built with the **MERN Stack** (MongoDB, Express.js, React.js with Vite, and Node.js) styled with custom, responsive plain CSS.

![TaskFlow Banner](https://img.shields.io/badge/Stack-MERN-6366f1?style=for-the-badge)
![React](https://img.shields.io/badge/React-18-61dafb?style=for-the-badge&logo=react)
![Vite](https://img.shields.io/badge/Vite-5-bd34fe?style=for-the-badge&logo=vite)
![Express](https://img.shields.io/badge/Express-4.21-white?style=for-the-badge&logo=express)
![MongoDB](https://img.shields.io/badge/MongoDB-Mongoose-47a248?style=for-the-badge&logo=mongodb)
![Node.js](https://img.shields.io/badge/Node.js-24-339933?style=for-the-badge&logo=node.js)

---

## 📖 Table of Contents
1. [Project Overview](#-project-overview)
2. [Technology Stack](#-technology-stack)
3. [Folder Structure](#-folder-structure)
4. [Key Features](#-key-features)
5. [Prerequisites](#-prerequisites)
6. [MongoDB Configuration](#-mongodb-configuration)
   - [Option A: Local MongoDB (Default)](#option-a-local-mongodb-default)
   - [Option B: MongoDB Atlas (Cloud)](#option-b-mongodb-atlas-free-cloud)
7. [Installation & Setup Step-by-Step](#-installation--setup-step-by-step)
8. [Running the Application](#-running-the-application)
9. [Running Automated Tests](#-running-automated-tests)
10. [REST API Documentation](#-rest-api-documentation)
11. [Interview & Technical Architecture Guide](#-interview--technical-architecture-guide)
12. [Safe GitHub Upload Instructions](#-safe-github-upload-instructions)

---

## 📌 Project Overview
**TaskFlow** is designed to streamline day-to-day productivity by providing a centralized, interactive workspace where users can create, categorize, prioritize, track, and complete tasks in real time.

All task data is persistently stored in MongoDB through an Express REST API backend, avoiding fragile browser `localStorage`. Real-time aggregated statistics provide instant visibility into total tasks, pending items, completed goals, and overdue deadlines.

---

## 🛠 Technology Stack

### Frontend
- **React.js 18 (Vite build tool):** Fast hot module replacement (HMR), component-based declarative UI, and optimized asset bundling.
- **Plain CSS3:** Custom design system built with CSS variables, modern dark slate & indigo aesthetics, CSS grid, flexbox, and mobile-first responsive media queries.
- **Native Fetch API:** Clean async communication layer with structured error parsing and loading state management.

### Backend
- **Node.js:** Scalable JavaScript runtime engine.
- **Express.js:** Lightweight and fast web framework for building RESTful endpoints.
- **Mongoose:** Object Data Modeling (ODM) library for schema validation, data casting, and business logic.
- **CORS & Dotenv:** Cross-Origin Resource Sharing handling and zero-leak environment variable management.

### Database
- **MongoDB:** Flexible NoSQL document database configured with schema validations and query indexes.

---

## 📂 Folder Structure

```text
REAL-TIME SIGN LANGUAGE TRANSLATOR DEMO/
│
├── backend/                        # Express.js REST API & Mongoose models
│   ├── config/
│   │   └── db.js                   # MongoDB connection logic
│   ├── controllers/
│   │   └── taskController.js       # CRUD & statistics business logic
│   ├── models/
│   │   └── Task.js                 # Mongoose schema with validations
│   ├── routes/
│   │   └── taskRoutes.js           # REST API route definitions
│   ├── tests/
│   │   └── api.test.js             # Automated 15-point integration test suite
│   ├── .env                        # Local backend environment variables (gitignored)
│   ├── .env.example                # Backend environment template
│   ├── .gitignore                  # Backend ignore file
│   ├── package.json                # Backend dependencies & scripts
│   ├── seed.js                     # Sample database seeder
│   └── server.js                   # Main application entry point
│
├── frontend/                       # React.js application powered by Vite
│   ├── public/                     # Static assets
│   ├── src/
│   │   ├── api/
│   │   │   └── taskApi.js          # Centralized backend API client
│   │   ├── components/
│   │   │   ├── ConfirmModal.jsx    # Deletion safety confirmation dialog
│   │   │   ├── EmptyState.jsx      # Zero-state illustration & actions
│   │   │   ├── FilterBar.jsx       # Search input, dropdown filters & sort
│   │   │   ├── Header.jsx          # Top bar with title, quick actions & drawer
│   │   │   ├── Icons.jsx           # Crisp inline SVG vector icons
│   │   │   ├── LoadingSkeleton.jsx # Shimmer skeleton loading effect
│   │   │   ├── Sidebar.jsx         # Navigation drawer & live DB status
│   │   │   ├── StatsCards.jsx      # 4 Metric summary cards
│   │   │   ├── TaskCard.jsx        # Interactive card item view
│   │   │   ├── TaskModal.jsx       # Create & Edit form dialog
│   │   │   ├── TaskTable.jsx       # Alternative tabular layout
│   │   │   └── Toast.jsx           # Auto-dismissing feedback notifications
│   │   ├── App.css                 # Main application stylesheets
│   │   ├── App.jsx                 # Main state coordinator component
│   │   ├── index.css               # Global tokens, typography & CSS reset
│   │   └── main.jsx                # React DOM root entry
│   ├── .env                        # Frontend environment variables (gitignored)
│   ├── .env.example                # Frontend environment template
│   ├── .gitignore                  # Frontend ignore file
│   ├── index.html                  # HTML entry with Google Fonts
│   ├── package.json                # Frontend dependencies & scripts
│   └── vite.config.js              # Vite configuration
│
├── .env.example                    # Root environment configuration template
├── .gitignore                      # Root Git ignore rules (node_modules, .env, dist)
├── package.json                    # Root workspace orchestration scripts
└── README.md                       # Comprehensive project documentation
```

---

## ✨ Key Features

1. **Live Analytics Dashboard:**
   - Real-time metric cards for **Total Tasks**, **Pending Tasks**, **Completed Tasks**, and **Overdue Tasks**.
   - Clicking any summary card instantly filters the displayed tasks.
2. **Create Tasks with Full Metadata:**
   - Title (required, trimmed, length validated)
   - Description (optional detailed notes)
   - Priority (`Low`, `Medium`, `High`)
   - Due Date (interactive date picker with overdue detection)
   - Status (`Pending`, `Completed`)
3. **Dual View Options:**
   - Toggle seamlessly between responsive **Card Grid** view and structured **Table View**.
4. **Instant Task Editing & Deletion:**
   - Edit any task attribute directly through a pre-populated modal dialog.
   - Deleting triggers a safety **Confirmation Dialog** to avoid accidental data loss.
5. **One-Click Status Toggle:**
   - Checkbox toggle marks tasks as *Pending* or *Completed* with immediate visual feedback (strikethrough and tag update).
6. **Real-Time Keyword Search:**
   - Debounced search bar matches task titles dynamically.
7. **Multi-Factor Filtering & Sorting:**
   - Filter by Status (`All`, `Pending`, `Completed`).
   - Filter by Priority (`All`, `High`, `Medium`, `Low`).
   - Sort by Due Date (Earliest / Latest), Creation Date (Newest / Oldest), or Title (A–Z).
8. **End-to-End Persistence:**
   - Backed by MongoDB via Mongoose schema validation. No temporary `localStorage` shortcuts.
9. **Polished State Handling:**
   - Animated shimmer loading skeletons.
   - Informative empty states with "Reset Filters" and "Add Task" quick actions.
   - Floating auto-dismissing toast notifications for Success, Info, and Error responses.
10. **Backend Connection Health Sentinel:**
    - Live database health badge in the sidebar.
    - Non-blocking banner with a "Retry Connection" button if the database is unreachable.

---

## 📋 Prerequisites

Before running the project, verify that you have Node.js installed:
```powershell
node -v   # Recommended: Node v18+ (v24.x tested)
npm -v    # Recommended: npm v9+ (v11.x tested)
git --version
```

---

## 🗄 MongoDB Configuration

You can connect TaskFlow to either a **Local MongoDB instance** or **MongoDB Atlas in the Cloud**.

### Option A: Local MongoDB (Default)
If you have MongoDB Community Server installed locally on your computer:
1. Ensure the MongoDB service is running (default port `27017`).
2. Your `backend/.env` file is pre-configured with:
   ```env
   PORT=5000
   NODE_ENV=development
   MONGODB_URI=mongodb://127.0.0.1:27017/taskflow
   ```

### Option B: MongoDB Atlas (Free Cloud)
If you prefer not to install MongoDB locally or want to access your database from anywhere:
1. Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) and create a free account.
2. Build a free **M0 Shared Cluster**.
3. Under **Security → Database Access**, create a user (e.g., username `admin`, choose a strong password).
4. Under **Security → Network Access**, add IP Address `0.0.0.0/0` (allow access from anywhere) or your current IP.
5. In your cluster dashboard, click **Connect → Drivers → Node.js**.
6. Copy the connection string and replace the placeholder in `backend/.env`:
   ```env
   PORT=5000
   NODE_ENV=development
   MONGODB_URI=mongodb+srv://admin:<YOUR_PASSWORD>@cluster0.xxxx.mongodb.net/taskflow?retryWrites=true&w=majority
   ```

---

## 📥 Installation & Setup Step-by-Step

### 1. Install Backend Dependencies
Open your terminal in the project root:
```powershell
cd backend
npm install
```

### 2. Install Frontend Dependencies
In a new or separate terminal:
```powershell
cd frontend
npm install
```

### 3. (Optional) Seed Sample Tasks
Populate your database with 6 ready-made tasks across all statuses and priorities:
```powershell
cd backend
npm run seed
```

---

## 🏃 Running the Application

For the best experience, open two terminal windows:

### Terminal 1: Start Backend (Express API)
```powershell
cd backend
npm run dev
```
*The backend starts at `http://localhost:5000`.*
*Health Check endpoint: `http://localhost:5000/api/health`.*

### Terminal 2: Start Frontend (React + Vite)
```powershell
cd frontend
npm run dev
```
*Vite will display the local preview URL, typically `http://localhost:5173`.*
*Open this URL in any browser.*

---

## 🧪 Running Automated Tests

TaskFlow includes a 15-step automated integration test suite that tests CRUD, validation, search, filter, status toggles, and statistics against the real database:

```powershell
cd backend
npm test
```

Expected output:
```text
======================================================
🧪 Starting TaskFlow Backend Integration Test Suite
======================================================
  ✅ PASS: Health check endpoint returns status 200 OK
  ✅ PASS: POST /api/tasks rejects empty title with 400 Bad Request
  ✅ PASS: POST /api/tasks rejects missing dueDate with 400 Bad Request
  ✅ PASS: POST /api/tasks successfully creates a High priority pending task
  ✅ PASS: POST /api/tasks creates an Overdue task (past due date, Pending)
  ✅ PASS: POST /api/tasks creates a Completed task
  ✅ PASS: GET /api/tasks returns created tasks list
  ✅ PASS: GET /api/tasks/:id retrieves task details by ID
  ✅ PASS: GET /api/tasks?search=React searches tasks by title keyword
  ✅ PASS: GET /api/tasks?status=Pending returns only Pending tasks
  ✅ PASS: GET /api/tasks?priority=High returns only High priority tasks
  ✅ PASS: PUT /api/tasks/:id updates title and description
  ✅ PASS: PATCH /api/tasks/:id/toggle-status switches Pending to Completed
  ✅ PASS: GET /api/tasks/stats calculates total, pending, completed, overdue
  ✅ PASS: DELETE /api/tasks/:id deletes task and returns 200

------------------------------------------------------
📊 Test Summary: 15 Passed, 0 Failed
------------------------------------------------------
```

---

## 📡 REST API Documentation

Base URL: `http://localhost:5000/api`

| Method | Endpoint | Description | Query Parameters / Request Body | Status Codes |
|---|---|---|---|---|
| `GET` | `/health` | Server health check | None | `200 OK` |
| `GET` | `/tasks` | List tasks with filters | `?search=xyz&status=Pending&priority=High&sortBy=dueDate&order=asc` | `200 OK`, `500` |
| `GET` | `/tasks/stats` | Aggregated dashboard metrics | None | `200 OK`, `500` |
| `GET` | `/tasks/:id` | Get single task by MongoDB ID | Parameter: `id` | `200 OK`, `400 Invalid ID`, `404 Not Found` |
| `POST` | `/tasks` | Create a new task | `{ "title": "...", "description": "...", "priority": "High", "dueDate": "2026-11-15", "status": "Pending" }` | `201 Created`, `400 Bad Request` |
| `PUT` | `/tasks/:id` | Update task fields | `{ "title": "...", "description": "...", "priority": "Low", "dueDate": "..." }` | `200 OK`, `400 Bad Request`, `404 Not Found` |
| `PATCH`| `/tasks/:id/toggle-status` | Toggle Pending / Completed | Optional: `{ "status": "Completed" }` | `200 OK`, `400`, `404` |
| `DELETE`| `/tasks/:id` | Delete task permanently | Parameter: `id` | `200 OK`, `400`, `404` |

---

## 💡 Interview & Technical Architecture Guide

When presenting TaskFlow in a technical interview, use the following talking points to showcase engineering depth:

### 1. Architectural Pattern: Layered Architecture
- **Controllers & Routing Separation:** HTTP routing (`routes/taskRoutes.js`) is separated from business logic (`controllers/taskController.js`). This keeps functions decoupled, readable, and simple to unit test.
- **Model Layer:** Mongoose schemas enforce types, default values, custom validation messages, and document virtuals (`isOverdue`).

### 2. State Management Strategy in React
- Single source of truth managed at the root `App.jsx` level, synchronizing active filters, search keywords, selected tasks, and modal dialogs.
- **Debounced Fetching:** Input keystrokes in the search bar are debounced (250ms) to prevent overwhelming the backend server with redundant requests.
- **Optimistic/Reactive UI:** Actions like quick-toggling task status provide immediate UI feedback while asynchronous server requests are processed.

### 3. Database Indexing & Query Optimization
- Tasks collection includes compound indexes on `{ status: 1, priority: 1, dueDate: 1 }` to allow high-frequency dashboard queries and filter combinations to execute in `O(log N)` index-lookup time rather than full-collection scans.
- `title` field supports case-insensitive regex queries for flexible keyword discovery.

### 4. Overdue Computation: Virtuals vs Aggregation
- **Backend Metric:** `/api/tasks/stats` calculates overdue counts using `{ status: 'Pending', dueDate: { $lt: new Date() } }` through parallel `Promise.all` count queries.
- **Client Presentation:** The frontend checks the date boundary on render to immediately highlight overdue badges in red without requiring extra API round-trips.

---

## 🔒 Safe GitHub Upload Instructions

> [!IMPORTANT]
> **Never commit your `.env` files or `node_modules` folders to GitHub.** The `.gitignore` files provided in this repository are pre-configured to keep your credentials and heavy dependency folders strictly private.

Follow these step-by-step commands to safely upload your project to GitHub:

### Step 1: Initialize Git Repository
In the root directory of the project:
```powershell
git init
```

### Step 2: Verify Ignored Files
Check Git status to ensure `.env` and `node_modules` are NOT staged:
```powershell
git status
```
*(You should see `backend/`, `frontend/`, `README.md`, `.gitignore`, and `.env.example`, but NEVER `node_modules` or `.env`.)*

### Step 3: Stage and Commit the Files
```powershell
git add .
git commit -m "feat: complete TaskFlow MERN stack task management system"
```

### Step 4: Link to GitHub and Push
1. Open [GitHub](https://github.com) and click **New Repository**.
2. Name it `taskflow-task-management-system`. Keep it Public or Private, and **do not** check "Initialize with README" (since we already have one).
3. Copy the commands shown on GitHub and run them:
```powershell
git branch -M main
git remote add origin https://github.com/<YOUR_GITHUB_USERNAME>/taskflow-task-management-system.git
git push -u origin main
```

---

## 📄 License
This project is licensed under the ISC License. Free for educational and personal portfolio use!
