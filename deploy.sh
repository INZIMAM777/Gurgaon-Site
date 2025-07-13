#!/bin/bash

echo "🚀 Starting deployment process..."

# Check if we're in production
if [ "$NODE_ENV" = "production" ]; then
    echo "📦 Production environment detected"
    
    # Run database migrations
    echo "🗄️ Running database migrations..."
    npm run db:push
    
    # Start the application
    echo "🚀 Starting application..."
    npm start
else
    echo "🔧 Development environment detected"
    npm run dev
fi