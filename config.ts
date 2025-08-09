// Configuration file for the portfolio website
// Update these values with your actual information

export const config = {
  // Site Information
  site: {
    name: "Mahid Sharief",
    title: "Custom App Developer & SaaS Specialist",
    description: "Professional custom app developer and SaaS specialist with expertise in React, Next.js, React Native, and modern web technologies.",
    url: "https://mahidsharief.com",
    email: "mahidsharief2@gmail.com",
    phone: "+91 9320676860",
    location: "India, Kashmir",
  },

  // Social Media Links
  social: {
    linkedin: "https://www.linkedin.com/in/mahid-sharief-ba7a92378/",
    github: "https://github.com/mahidsharief",
    twitter: "https://twitter.com/mahidsharief",
    whatsapp: "https://wa.me/919320676860",
  },

  // Analytics (optional)
  analytics: {
    googleAnalyticsId: import.meta.env.VITE_GA_TRACKING_ID || "",
  },

  // Email Service Configuration
  email: {
    // Choose one of these options:
    service: "simulation", // "emailjs" | "formspree" | "api" | "simulation"
    
    // EmailJS Configuration
    emailjs: {
      serviceId: import.meta.env.VITE_EMAILJS_SERVICE_ID || "",
      templateId: import.meta.env.VITE_EMAILJS_TEMPLATE_ID || "",
      publicKey: import.meta.env.VITE_EMAILJS_PUBLIC_KEY || "",
    },
    
    // Formspree Configuration
    formspree: {
      formId: import.meta.env.VITE_FORMSPREE_FORM_ID || "",
    },
    
    // Custom API Configuration
    api: {
      baseUrl: import.meta.env.VITE_API_BASE_URL || "/api",
    },
  },

  // SEO Configuration
  seo: {
    keywords: [
      "custom app developer",
      "SaaS specialist",
      "React developer",
      "Next.js developer",
      "React Native developer",
      "web development",
      "mobile app development",
      "software development",
      "India",
      "Kashmir"
    ],
    author: "Mahid Sharief",
    robots: "index, follow",
    themeColor: "#7c3aed",
  },

  // Contact Information
  contact: {
    email: "mahidsharief2@gmail.com",
    phone: "+91 9320676860",
    location: "India, Kashmir",
    linkedin: "https://www.linkedin.com/in/mahid-sharief-ba7a92378/",
  },

  // Skills Configuration
  skills: {
    categories: [
      {
        title: "Custom App Development",
        skills: [
          { name: "React", level: 90 },
          { name: "Next.js", level: 85 },
          { name: "TypeScript", level: 80 },
          { name: "React Native", level: 75 },
          { name: "Progressive Web Apps", level: 70 },
          { name: "Electron", level: 65 },
          { name: "Custom UI/UX", level: 85 },
          { name: "API Integration", level: 90 }
        ],
        color: "border-purple-200 dark:border-purple-800",
        headerColor: "text-purple-600 dark:text-purple-400",
        gradient: "from-purple-500 to-pink-500"
      },
      {
        title: "SaaS Technologies",
        skills: [
          { name: "Multi-tenancy", level: 80 },
          { name: "Stripe Integration", level: 85 },
          { name: "Subscription Management", level: 75 },
          { name: "Authentication", level: 90 },
          { name: "Microservices", level: 70 },
          { name: "API Design", level: 85 },
          { name: "Database Scaling", level: 75 },
          { name: "Cloud Architecture", level: 80 }
        ],
        color: "border-blue-200 dark:border-blue-800",
        headerColor: "text-blue-600 dark:text-blue-400",
        gradient: "from-blue-500 to-cyan-500"
      },
      {
        title: "Backend & Infrastructure",
        skills: [
          { name: "Node.js", level: 85 },
          { name: "Express.js", level: 80 },
          { name: "PostgreSQL", level: 75 },
          { name: "MongoDB", level: 80 },
          { name: "Redis", level: 70 },
          { name: "AWS", level: 75 },
          { name: "Docker", level: 70 },
          { name: "Serverless", level: 65 }
        ],
        color: "border-green-200 dark:border-green-800",
        headerColor: "text-green-600 dark:text-green-400",
        gradient: "from-green-500 to-emerald-500"
      },
      {
        title: "Development Tools",
        skills: [
          { name: "Git", level: 90 },
          { name: "CI/CD", level: 75 },
          { name: "Testing", level: 80 },
          { name: "Performance Optimization", level: 85 },
          { name: "Analytics", level: 70 },
          { name: "Error Tracking", level: 75 },
          { name: "Security", level: 80 },
          { name: "DevOps", level: 70 }
        ],
        color: "border-orange-200 dark:border-orange-800",
        headerColor: "text-orange-600 dark:text-orange-400",
        gradient: "from-orange-500 to-red-500"
      }
    ]
  },

  // Animation Configuration
  animations: {
    enabled: true,
    reducedMotion: true, // Respect user's motion preferences
    cursorFollower: true,
    floatingParticles: true,
    scrollAnimations: true,
  },

  // Performance Configuration
  performance: {
    lazyLoading: true,
    imageOptimization: true,
    codeSplitting: true,
    preconnect: [
      "https://fonts.googleapis.com",
      "https://fonts.gstatic.com",
      "https://images.unsplash.com"
    ],
  }
};

export default config;
