-- Supabase Database Setup for Mahid's Portfolio
-- Run this in your Supabase SQL Editor

-- 1. Create Contact Messages Table
CREATE TABLE IF NOT EXISTS contact_messages (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL,
  subject VARCHAR(255) NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE contact_messages ENABLE ROW LEVEL SECURITY;

-- Allow public insert access for contact form
CREATE POLICY "Allow public insert" ON contact_messages
  FOR INSERT WITH CHECK (true);

-- Allow authenticated users to read (for admin dashboard)
CREATE POLICY "Allow authenticated read" ON contact_messages
  FOR SELECT USING (auth.role() = 'authenticated');

-- 2. Create Analytics Table
CREATE TABLE IF NOT EXISTS analytics (
  id SERIAL PRIMARY KEY,
  event_type VARCHAR(100) NOT NULL,
  event_data JSONB,
  user_agent TEXT,
  ip_address INET,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE analytics ENABLE ROW LEVEL SECURITY;

-- Allow public insert access for analytics
CREATE POLICY "Allow public insert" ON analytics
  FOR INSERT WITH CHECK (true);

-- Allow authenticated users to read
CREATE POLICY "Allow authenticated read" ON analytics
  FOR SELECT USING (auth.role() = 'authenticated');

-- 3. Create Projects Table (for future use)
CREATE TABLE IF NOT EXISTS projects (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  long_description TEXT NOT NULL,
  image_url TEXT NOT NULL,
  technologies TEXT[] NOT NULL,
  type VARCHAR(50) NOT NULL,
  category VARCHAR(100) NOT NULL,
  live_url TEXT,
  gradient VARCHAR(100) NOT NULL,
  icon VARCHAR(10) NOT NULL,
  features TEXT[] NOT NULL,
  challenges TEXT[] NOT NULL,
  solutions TEXT[] NOT NULL,
  demo_key VARCHAR(100),
  demo_component TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;

-- Allow public read access for projects
CREATE POLICY "Allow public read access" ON projects
  FOR SELECT USING (true);

-- Allow authenticated users to manage projects
CREATE POLICY "Allow authenticated manage" ON projects
  FOR ALL USING (auth.role() = 'authenticated');

-- 4. Insert Sample Projects
INSERT INTO projects (
  title, description, long_description, image_url, technologies, 
  type, category, live_url, gradient, icon, features, challenges, solutions
) VALUES 
(
  'Instagram Clone',
  'Full-featured social media platform with photo sharing, stories, direct messaging, and real-time notifications.',
  'A comprehensive Instagram clone that replicates the core functionality of the popular social media platform. Features include user authentication, photo upload with filters, stories, direct messaging, real-time notifications, and a responsive design that works seamlessly across all devices.',
  'https://images.unsplash.com/photo-1611262588024-d12430b98920?w=600&h=400&fit=crop&auto=format',
  ARRAY['React', 'Node.js', 'MongoDB', 'Socket.io', 'AWS S3', 'Redux', 'JWT'],
  'Website',
  'Social Media',
  'https://instagram-clone-mahid.vercel.app',
  'from-purple-500 via-pink-500 to-orange-500',
  '📷',
  ARRAY[
    'User authentication and profile management',
    'Photo upload with filters and editing',
    'Stories feature with 24-hour expiration',
    'Direct messaging with real-time updates',
    'Like, comment, and share functionality',
    'Explore page with trending posts',
    'Responsive design for all devices'
  ],
  ARRAY[
    'Implementing real-time notifications',
    'Optimizing image upload and storage',
    'Managing complex state with Redux',
    'Ensuring responsive design across devices'
  ],
  ARRAY[
    'Used Socket.io for real-time features',
    'Implemented AWS S3 for scalable image storage',
    'Structured Redux store with proper actions',
    'Mobile-first design with CSS Grid and Flexbox'
  ]
),
(
  'TaskFlow SaaS',
  'Comprehensive project management SaaS platform with team collaboration, time tracking, advanced analytics, and automated workflows.',
  'TaskFlow is a powerful SaaS platform designed for modern teams to manage projects, track time, and collaborate effectively. Built with Next.js and TypeScript, it offers enterprise-grade features including real-time collaboration, advanced analytics, automated workflows, and seamless payment integration.',
  'https://images.unsplash.com/photo-1611224923853-80b023f02d71?w=600&h=400&fit=crop&auto=format',
  ARRAY['Next.js', 'TypeScript', 'Stripe', 'PostgreSQL', 'Redis', 'Prisma', 'NextAuth'],
  'Website',
  'SaaS Platform',
  'https://taskflow-saas.vercel.app',
  'from-blue-500 to-cyan-500',
  '💼',
  ARRAY[
    'Multi-tenant architecture with team management',
    'Real-time task collaboration and updates',
    'Time tracking with detailed analytics',
    'Automated workflow triggers and notifications',
    'Stripe integration for subscription management',
    'Advanced reporting and data visualization',
    'Role-based access control and permissions'
  ],
  ARRAY[
    'Implementing multi-tenancy architecture',
    'Real-time collaboration across multiple users',
    'Complex state management with multiple teams',
    'Payment integration and subscription handling'
  ],
  ARRAY[
    'Used PostgreSQL with row-level security for multi-tenancy',
    'Implemented WebSockets for real-time updates',
    'Structured state management with Zustand',
    'Integrated Stripe with webhook handling'
  ]
),
(
  'FitTracker Pro',
  'Comprehensive fitness tracking mobile app with workout plans, nutrition tracking, progress analytics, and social features.',
  'FitTracker Pro is a comprehensive fitness tracking mobile application that helps users achieve their health goals. Built with React Native, it offers personalized workout plans, nutrition tracking, progress analytics, and social features to keep users motivated and engaged.',
  'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=600&h=400&fit=crop&auto=format',
  ARRAY['React Native', 'Firebase', 'Redux', 'Stripe', 'Push Notifications', 'Expo', 'HealthKit'],
  'Mobile App',
  'Health & Fitness',
  'https://expo.dev/@mahidsharief/fittracker-pro',
  'from-green-500 to-emerald-500',
  '💪',
  ARRAY[
    'Personalized workout plans and routines',
    'Nutrition tracking with barcode scanning',
    'Progress analytics and goal setting',
    'Social features and community challenges',
    'Integration with health devices and apps',
    'Push notifications for workout reminders',
    'Offline functionality for workouts'
  ],
  ARRAY[
    'Integrating with multiple health APIs',
    'Managing offline data synchronization',
    'Optimizing performance for mobile devices',
    'Implementing complex workout algorithms'
  ],
  ARRAY[
    'Used Expo for cross-platform compatibility',
    'Implemented local storage with AsyncStorage',
    'Optimized with React Native performance tools',
    'Created modular workout system architecture'
  ]
),
(
  'ShopEase Mobile',
  'Modern e-commerce mobile application with seamless shopping experience, secure payments, order tracking, and personalized recommendations.',
  'ShopEase Mobile is a modern e-commerce application built with Flutter that provides a seamless shopping experience. Features include secure payment processing, real-time order tracking, personalized product recommendations, and an intuitive user interface designed for mobile commerce.',
  'https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=600&h=400&fit=crop&auto=format',
  ARRAY['Flutter', 'Dart', 'Firebase', 'Stripe', 'Google Maps API', 'Provider', 'GetX'],
  'Mobile App',
  'E-commerce',
  'https://play.google.com/store/apps/details?id=com.mahidsharief.shopease',
  'from-orange-500 to-red-500',
  '🛒',
  ARRAY[
    'Secure payment processing with Stripe',
    'Real-time order tracking and notifications',
    'Personalized product recommendations',
    'Wishlist and shopping cart management',
    'Product search and filtering',
    'User reviews and ratings system',
    'Offline browsing with sync capabilities'
  ],
  ARRAY[
    'Implementing secure payment processing',
    'Managing complex state across multiple screens',
    'Optimizing app performance and loading times',
    'Ensuring smooth offline functionality'
  ],
  ARRAY[
    'Integrated Stripe for secure payments',
    'Used Provider for state management',
    'Implemented caching for offline support',
    'Optimized with Flutter performance tools'
  ]
);

-- 5. Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_contact_messages_created_at ON contact_messages(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_analytics_event_type ON analytics(event_type);
CREATE INDEX IF NOT EXISTS idx_analytics_created_at ON analytics(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_projects_type ON projects(type);
CREATE INDEX IF NOT EXISTS idx_projects_category ON projects(category);
