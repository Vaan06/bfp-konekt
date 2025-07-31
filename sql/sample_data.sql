-- BFP Konekt Sample Data
-- This file contains sample data for demonstration purposes

-- Sample Users
INSERT INTO users (username, email, password_hash, role, status, created_at) VALUES
('admin', 'admin@bfpkonekt.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', NOW()),
('responder1', 'responder1@bfpkonekt.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'responder', 'active', NOW()),
('responder2', 'responder2@bfpkonekt.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'responder', 'active', NOW()),
('user1', 'user1@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'active', NOW()),
('user2', 'user2@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'active', NOW());

-- Sample Incidents
INSERT INTO incidents (title, description, location_lat, location_lng, address, priority, category, status, reported_by, created_at) VALUES
('Building Fire - Main Street', 'Fire reported in 3-story commercial building. Smoke visible from upper floors.', 14.5995, 120.9842, '123 Main Street, Manila', 'high', 'fire', 'active', 4, NOW()),
('Vehicle Accident - Highway 1', 'Multi-vehicle collision on northbound lane. Multiple injuries reported.', 14.5995, 120.9842, 'Highway 1, Quezon City', 'high', 'accident', 'active', 5, NOW()),
('Medical Emergency - Shopping Mall', 'Person collapsed in food court. Unconscious, breathing irregular.', 14.5995, 120.9842, 'SM Mall, Makati', 'medium', 'medical', 'pending', 4, NOW()),
('Gas Leak - Residential Area', 'Strong gas smell reported in apartment complex. Evacuation needed.', 14.5995, 120.9842, '456 Residential Ave, Taguig', 'high', 'fire', 'resolved', 5, NOW()),
('Electrical Fire - Office Building', 'Small electrical fire in server room. Contained but needs inspection.', 14.5995, 120.9842, '789 Business District, Pasig', 'medium', 'fire', 'resolved', 4, NOW());

-- Sample Incident Updates
INSERT INTO incident_updates (incident_id, user_id, status, description, created_at) VALUES
(1, 2, 'en_route', 'Fire truck dispatched. ETA 5 minutes.', NOW()),
(1, 2, 'on_scene', 'Arrived at location. Assessing situation.', NOW()),
(1, 3, 'on_scene', 'Additional units requested. Fire spreading to adjacent building.', NOW()),
(2, 2, 'en_route', 'Ambulance and fire truck dispatched.', NOW()),
(2, 2, 'on_scene', 'Arrived at scene. Multiple vehicles involved.', NOW()),
(3, 2, 'en_route', 'Medical team dispatched. ETA 3 minutes.', NOW()),
(4, 3, 'resolved', 'Gas leak contained. Building evacuated safely.', NOW()),
(5, 2, 'resolved', 'Electrical fire extinguished. Building cleared for re-entry.', NOW());

-- Sample Messages
INSERT INTO messages (sender_id, incident_id, message, created_at) VALUES
(2, 1, 'Fire is spreading to the second floor. Need additional units.', NOW()),
(3, 1, 'Additional fire truck and ladder truck requested.', NOW()),
(2, 1, 'Fire under control. Beginning mop-up operations.', NOW()),
(2, 2, 'Multiple casualties. Requesting additional medical units.', NOW()),
(3, 2, 'Traffic control established. Route cleared for emergency vehicles.', NOW()),
(2, 3, 'Patient conscious and stable. Transporting to hospital.', NOW());

-- Sample Notifications
INSERT INTO notifications (type, title, message, recipients, priority, created_at) VALUES
('emergency', 'Major Fire Incident', 'Large fire reported in commercial district. All available units respond.', 'all', 'high', NOW()),
('alert', 'System Maintenance', 'Scheduled maintenance tonight 2-4 AM. Brief service interruption expected.', 'all', 'medium', NOW()),
('info', 'Training Session', 'Fire safety training session next week. All responders required to attend.', 'responders', 'low', NOW());

-- Sample User Activity Log
INSERT INTO user_activity_log (user_id, action, details, ip_address, created_at) VALUES
(1, 'login', 'User logged in successfully', '192.168.1.100', NOW()),
(2, 'incident_update', 'Updated incident #1 status to en_route', '192.168.1.101', NOW()),
(3, 'message_sent', 'Sent message in incident #1', '192.168.1.102', NOW()),
(4, 'incident_report', 'Reported new incident #3', '192.168.1.103', NOW()),
(5, 'incident_report', 'Reported new incident #2', '192.168.1.104', NOW());

-- Sample Settings
INSERT INTO settings (setting_key, setting_value, description, created_at) VALUES
('system_name', 'BFP Konekt', 'System display name', NOW()),
('emergency_contact', '+63 911 123 4567', 'Emergency contact number', NOW()),
('smtp_host', 'smtp.gmail.com', 'Email server host', NOW()),
('smtp_port', '587', 'Email server port', NOW()),
('notification_email', 'alerts@bfpkonekt.com', 'System notification email', NOW()),
('max_incident_photos', '5', 'Maximum photos per incident', NOW()),
('auto_archive_days', '30', 'Days before auto-archiving resolved incidents', NOW());

-- Sample Slider Images (if using slider feature)
INSERT INTO slider_images (image_path, title, description, order_index, active, created_at) VALUES
('/images/slider/emergency-response.jpg', 'Emergency Response', 'Professional emergency response team in action', 1, 1, NOW()),
('/images/slider/fire-safety.jpg', 'Fire Safety', 'Fire safety awareness and prevention', 2, 1, NOW()),
('/images/slider/community-service.jpg', 'Community Service', 'Serving the community with dedication', 3, 1, NOW());

-- Sample Feedback (if using feedback system)
INSERT INTO feedback (user_id, incident_id, rating, comment, created_at) VALUES
(4, 1, 5, 'Excellent response time. Firefighters were very professional.', NOW()),
(5, 2, 4, 'Good coordination between medical and fire teams.', NOW()),
(4, 4, 5, 'Quick response to gas leak. Very thorough evacuation.', NOW());

-- Sample Evidence (if using evidence tracking)
INSERT INTO evidence (incident_id, file_path, file_type, description, uploaded_by, created_at) VALUES
(1, '/uploads/evidence/fire_photo_1.jpg', 'image', 'Photo of fire scene', 2, NOW()),
(1, '/uploads/evidence/fire_video_1.mp4', 'video', 'Video of fire response', 2, NOW()),
(2, '/uploads/evidence/accident_photo_1.jpg', 'image', 'Photo of accident scene', 2, NOW()),
(4, '/uploads/evidence/gas_leak_photo_1.jpg', 'image', 'Photo of gas leak location', 3, NOW());

-- Sample NLP Locations (if using location processing)
INSERT INTO nlp_locations (location_name, latitude, longitude, address, confidence_score, created_at) VALUES
('Main Street Commercial District', 14.5995, 120.9842, 'Main Street, Manila', 0.95, NOW()),
('Highway 1 Intersection', 14.5995, 120.9842, 'Highway 1, Quezon City', 0.92, NOW()),
('SM Mall Food Court', 14.5995, 120.9842, 'SM Mall, Makati', 0.88, NOW()),
('Residential Complex A', 14.5995, 120.9842, '456 Residential Ave, Taguig', 0.90, NOW()),
('Business District Office Tower', 14.5995, 120.9842, '789 Business District, Pasig', 0.87, NOW()); 