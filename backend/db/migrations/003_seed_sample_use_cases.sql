/*
  # Seed sample use cases data

  1. Purpose
    - Populate the use_cases table with sample data for testing and demonstration

  2. Data
    - 10 sample use cases covering different departments and statuses
    - Each use case includes all required fields
*/

INSERT INTO use_cases (
  title, short_description, full_description, department, status,
  owner_name, owner_email, image_url, business_impact,
  technology_stack, internal_links, tags, related_use_case_ids,
  created_at, updated_at, application_url
) VALUES
(
  'AI-Powered Customer Sentiment Analysis',
  'Automated analysis of customer feedback across multiple channels using natural language processing to identify trends and sentiment patterns.',
  'This use case implements an advanced AI system that automatically analyzes customer feedback from various sources including emails, surveys, social media, and support tickets. The system uses state-of-the-art natural language processing to identify sentiment patterns, trending topics, and actionable insights. The solution provides real-time dashboards and automated alerts for negative sentiment spikes, enabling proactive customer service responses.',
  'Marketing',
  'Live',
  'Sarah Mueller',
  'sarah.mueller@tesa.com',
  'https://images.pexels.com/photos/8439093/pexels-photo-8439093.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Reduced response time to customer issues by 45%, improved customer satisfaction scores by 23%, and identified 3 major product improvement opportunities in the first quarter.',
  ARRAY['OpenAI', 'Azure', 'Python', 'Power BI'],
  '{"sharepoint": "https://sharepoint.tesa.com/sentiment-analysis", "confluence": "https://confluence.tesa.com/sentiment", "demo": "https://demo.tesa.com/sentiment"}',
  ARRAY['Marketing', 'NLP', 'GenAI', 'Customer Experience'],
  ARRAY[]::text[],
  '2024-01-15T10:00:00Z',
  '2024-03-20T14:30:00Z',
  'https://sentiment.tesa.com'
),
(
  'Intelligent Document Processing for Procurement',
  'Automated extraction and processing of supplier invoices and contracts using computer vision and machine learning.',
  'This procurement automation solution leverages advanced computer vision and machine learning to automatically process incoming supplier documents. The system extracts key information from invoices, purchase orders, and contracts, validates data against existing records, and routes documents for approval. It handles multiple languages and document formats, significantly reducing manual data entry and processing time.',
  'Procurement',
  'MVP',
  'Thomas Weber',
  'thomas.weber@tesa.com',
  'https://images.pexels.com/photos/6476589/pexels-photo-6476589.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Processing time reduced from 4 hours to 15 minutes per document, 98% accuracy rate, projected annual savings of €450,000.',
  ARRAY['Azure Document Intelligence', 'SAP', 'Python', 'Power Automate'],
  '{"sharepoint": "https://sharepoint.tesa.com/doc-processing", "confluence": "https://confluence.tesa.com/procurement-ai"}',
  ARRAY['Procurement', 'OCR', 'Automation', 'SAP'],
  ARRAY[]::text[],
  '2024-02-10T09:00:00Z',
  '2024-04-15T16:45:00Z',
  'https://docprocessing.tesa.com'
),
(
  'Smart Lab Assistant for R&D',
  'AI-powered research assistant that helps scientists find relevant studies, analyze experimental data, and generate research hypotheses.',
  'The Smart Lab Assistant is an innovative AI tool designed specifically for our R&D teams. It integrates with our laboratory information management system (LIMS) and provides intelligent assistance throughout the research process. The assistant can search through millions of scientific papers, analyze experimental results, suggest optimal test parameters, and even generate hypotheses based on historical data patterns. It uses advanced machine learning models trained on chemical and materials science data.',
  'R&D',
  'Evaluation',
  'Dr. Anna Schmidt',
  'anna.schmidt@tesa.com',
  'https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Early results show 30% faster literature review process, 25% reduction in failed experiments through better parameter selection.',
  ARRAY['OpenAI', 'Python', 'TensorFlow', 'LIMS Integration'],
  '{"sharepoint": "https://sharepoint.tesa.com/smart-lab", "demo": "https://demo.tesa.com/lab-assistant"}',
  ARRAY['R&D', 'GenAI', 'Research', 'Innovation'],
  ARRAY[]::text[],
  '2024-03-05T11:00:00Z',
  '2024-04-22T10:15:00Z',
  NULL
),
(
  'Predictive Maintenance for Production Equipment',
  'Machine learning models that predict equipment failures before they occur, enabling proactive maintenance scheduling.',
  'This predictive maintenance system uses IoT sensors and machine learning to monitor production equipment in real-time. The system collects data on vibration, temperature, pressure, and other operational parameters, then uses predictive models to identify patterns that precede equipment failures. Maintenance teams receive automated alerts with failure probability scores and recommended actions, allowing them to schedule maintenance during planned downtime rather than experiencing unexpected breakdowns.',
  'Operations',
  'Live',
  'Michael Becker',
  'michael.becker@tesa.com',
  'https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Unplanned downtime reduced by 62%, maintenance costs decreased by 28%, equipment lifespan increased by 15%.',
  ARRAY['Azure IoT', 'Machine Learning', 'Python', 'SAP'],
  '{"sharepoint": "https://sharepoint.tesa.com/predictive-maintenance", "confluence": "https://confluence.tesa.com/operations-ai"}',
  ARRAY['Operations', 'IoT', 'Predictive Analytics', 'Maintenance'],
  ARRAY[]::text[],
  '2023-11-20T08:00:00Z',
  '2024-04-10T13:20:00Z',
  'https://maintenance.tesa.com'
),
(
  'Automated Content Generation for Marketing',
  'AI system that generates marketing content, product descriptions, and social media posts in multiple languages.',
  'This marketing automation tool uses large language models to generate high-quality marketing content across multiple channels and languages. The system can create product descriptions, blog posts, social media content, email campaigns, and advertising copy while maintaining brand voice and tone consistency. It includes a review workflow where marketing managers can approve, edit, or reject generated content. The tool has significantly accelerated our content creation process while maintaining quality standards.',
  'Marketing',
  'PoC',
  'Lisa Hoffmann',
  'lisa.hoffmann@tesa.com',
  'https://images.pexels.com/photos/265087/pexels-photo-265087.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Content creation time reduced by 60%, ability to produce content in 12 languages simultaneously, improved SEO rankings.',
  ARRAY['OpenAI GPT-4', 'Azure', 'Node.js', 'CMS Integration'],
  '{"sharepoint": "https://sharepoint.tesa.com/content-gen", "demo": "https://demo.tesa.com/content-ai"}',
  ARRAY['Marketing', 'GenAI', 'Content Creation', 'Automation'],
  ARRAY[]::text[],
  '2024-02-28T14:00:00Z',
  '2024-04-18T11:30:00Z',
  NULL
);
