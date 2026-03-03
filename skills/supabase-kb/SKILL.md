# Supabase Knowledge Base Skill

When a user asks a question, query the Supabase REST API to find relevant answers.

## Connection Details
Supabase URL: https://batyczeeyeoqjuxhhlic.supabase.co
Supabase anon key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJhdHljemVleWVvcWp1eGhobGljIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4MDM1NDMsImV4cCI6MjA4NjM3OTU0M30.obSL3nHGuvaB-bW3-mjiJceGNrI6jsT6PZZrTdWsqQI

## Table Structure
Table: knowledge_base
Columns: id, category, title, content, url, created_at

Categories: faq, service, testimonial, navigation

## How to Fetch Data

### Search by keyword in content:
GET https://batyczeeyeoqjuxhhlic.supabase.co/rest/v1/knowledge_base?select=title,content,url&content=ilike.*KEYWORD*
Headers:
  apikey: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJhdHljemVleWVvcWp1eGhobGljIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4MDM1NDMsImV4cCI6MjA4NjM3OTU0M30.obSL3nHGuvaB-bW3-mjiJceGNrI6jsT6PZZrTdWsqQI

### Fetch all rows:
GET https://batyczeeyeoqjuxhhlic.supabase.co/rest/v1/knowledge_base?select=title,content,url
Headers:
  apikey: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJhdHljemVleWVvcWp1eGhobGljIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4MDM1NDMsImV4cCI6MjA4NjM3OTU0M30.obSL3nHGuvaB-bW3-mjiJceGNrI6jsT6PZZrTdWsqQI

## Instructions
1. Receive the user's question
2. Extract the key keyword from the question
3. Replace KEYWORD in the ilike URL with that keyword and make the GET request
4. From the results pick the most relevant row by matching content to the question
5. Return a clear, helpful answer based on the content field
6. If a url is available in the result, include it as a reference link
7. If no relevant data found, say: "I don't have information about that. Contact Builderz at hello@builderz.dev or visit https://builderz.dev"