# Quick Setup Guide for Mahid's Portfolio

## 1. Create Environment File

Create a file named `.env` in your project root (same folder as `package.json`) with this content:

```env
VITE_SUPABASE_URL=https://zsizgtxutimflhlcusfc.supabase.co
VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpzaXpndHh1dGltZmxobGN1c2ZjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTQ2NzU5NTIsImV4cCI6MjA3MDI1MTk1Mn0.9wzhsoR_KRWrCcfIQIuREU2APktAZbHyULXtZLndUN4
VITE_ANALYTICS_ENABLED=true
```

## 2. Set Up Database

1. Go to your Supabase dashboard: https://supabase.com/dashboard
2. Open your project: `zsizgtxutimflhlcusfc`
3. Go to **SQL Editor** in the left sidebar
4. Copy and paste the entire content from `setup-supabase.sql`
5. Click **Run** to execute the SQL

## 3. Test the Integration

1. Start your development server: `npm run dev`
2. Go to the Contact section
3. Fill out and submit the contact form
4. Check your Supabase dashboard → **Table Editor** → **contact_messages** to see the stored data

## 4. What's Now Working

✅ **Contact Form**: Stores messages in Supabase database  
✅ **Analytics**: Tracks user interactions  
✅ **Projects**: Ready for dynamic content management  
✅ **Real-time Data**: All data comes from your database  

## 5. View Your Data

- **Contact Messages**: Supabase Dashboard → Table Editor → contact_messages
- **Analytics**: Supabase Dashboard → Table Editor → analytics
- **Projects**: Supabase Dashboard → Table Editor → projects

## 6. Next Steps

- Test the contact form by submitting a message
- Check that data appears in your Supabase dashboard
- Consider adding email notifications for new contact messages
- Set up admin authentication for managing content

Your portfolio is now fully connected to Supabase! 🚀
