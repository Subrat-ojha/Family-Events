<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- home.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Family Moments - Home</title>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home1.css">

    
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">Family Moments</div>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/addFamily">Add Family Member</a></li>
                <li><a href="${pageContext.request.contextPath}/addEvent">Add Event</a></li>
                <li><a href="${pageContext.request.contextPath}/calenderView">Calendar View</a></li>
                <li><a href="${pageContext.request.contextPath}/giftNotes">Gift Notes</a></li>
                <li><a href="${pageContext.request.contextPath}/login">Settings / Login</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Never miss a moment with your loved ones!</h1>
     <a href="addEvent">   <button class="primary-btn">➕ Add Your First Event</button>
     </a>
    </section>

    <!-- Upcoming Events -->
    <section class="events-preview">
        <h2>Upcoming Events</h2>
        <ul>
            <li>🎂 Mom’s Birthday - 15th April</li>
            <li>💍 Parents' Anniversary - 20th April</li>
            <!-- Add more events dynamically here -->
        </ul>
    
    <a href="calenderView">    <button class="secondary-btn">View Full Calendar</button>
    </a>
    </section>

    <!-- Quick Actions -->
    <section class="quick-actions">
        <div class="action-card">➕ Add Family Member</div>
        <div class="action-card">📅 Add Event</div>
        <div class="action-card">🎁 Gift Suggestions</div>
        <div class="action-card">🔔 Reminders Settings</div>
    </section>

    <!-- Footer -->
    <footer>
        <p>About | Contact | Privacy Policy | Credits</p>
    </footer>
</body>
</html>
