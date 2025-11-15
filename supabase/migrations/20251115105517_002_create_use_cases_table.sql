/*
  # Create use_cases table

  1. New Tables
    - `use_cases`
      - `id` (uuid, primary key) - Unique identifier for each use case
      - `title` (text, not null) - Title of the use case
      - `short_description` (text, not null) - Brief description
      - `full_description` (text, not null) - Detailed description
      - `department` (text, not null) - Department name
      - `status` (text, not null) - Current status of the use case
      - `owner_name` (text, not null) - Name of the owner
      - `owner_email` (text, not null) - Email of the owner
      - `image_url` (text) - Optional image URL
      - `business_impact` (text) - Business impact description
      - `technology_stack` (text[], not null) - Array of technologies used
      - `tags` (text[], not null) - Array of tags for categorization
      - `application_url` (text) - Optional application URL
      - `internal_links` (jsonb, not null) - JSON object for internal links
      - `related_use_case_ids` (text[], not null) - Array of related use case IDs
      - `created_at` (timestamptz, not null) - Creation timestamp
      - `updated_at` (timestamptz, not null) - Last update timestamp

  2. Indexes
    - Index on department for filtering
    - Index on status for filtering
    - Index on tags for searching
    - Index on created_at for sorting

  3. Security
    - Enable RLS on `use_cases` table
    - Add policies for authenticated users to perform CRUD operations
*/

CREATE TABLE IF NOT EXISTS use_cases (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  short_description text NOT NULL,
  full_description text NOT NULL,
  department text NOT NULL,
  status text NOT NULL,
  owner_name text NOT NULL,
  owner_email text NOT NULL,
  image_url text,
  business_impact text,
  technology_stack text[] NOT NULL DEFAULT '{}',
  tags text[] NOT NULL DEFAULT '{}',
  application_url text,
  internal_links jsonb NOT NULL DEFAULT '{}',
  related_use_case_ids text[] NOT NULL DEFAULT '{}',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_use_cases_department ON use_cases(department);
CREATE INDEX IF NOT EXISTS idx_use_cases_status ON use_cases(status);
CREATE INDEX IF NOT EXISTS idx_use_cases_tags ON use_cases USING GIN(tags);
CREATE INDEX IF NOT EXISTS idx_use_cases_created_at ON use_cases(created_at DESC);

ALTER TABLE use_cases ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access to use cases"
  ON use_cases
  FOR SELECT
  USING (true);

CREATE POLICY "Allow authenticated users to insert use cases"
  ON use_cases
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to update use cases"
  ON use_cases
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to delete use cases"
  ON use_cases
  FOR DELETE
  TO authenticated
  USING (true);