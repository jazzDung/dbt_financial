SELECT t."id", fields.*
FROM "tasks" t,
LATERAL jsonb_to_record(
  SELECT jsonb_object_agg(value->>'name', value->'value')
  FROM jsonb_array_elements(t."additionalFields")
) AS fields("Total Cases" jsonb, "Open Cases" jsonb, "Prod Cases" jsonb, "Sev1 Cases" jsonb, "Sev2 Cases" jsonb, " Sev1/2 Cases" jsonb, "Preview Cases" jsonb)
WHERE t."additionalFields" @> '[{"name":"Open Cases"}]';