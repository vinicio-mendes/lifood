CREATE TABLE "producers" (
  "id" SERIAL PRIMARY KEY,
  "category_id" int UNIQUE,
  "name" text NOT NULL,
  "description" text NOT NULL,
  "quantity" int DEFAULT 0,
  "status" int DEFAULT 1,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now(
  ))
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" text NOT NULL
);

CREATE TABLE "files" (
  "id" SERIAL PRIMARY KEY,
  "name" text,
  "path" text NOT NULL,
  "producer_id" int UNIQUE
);

ALTER TABLE "producers" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "files" ADD FOREIGN KEY ("producer_id") REFERENCES "producers" ("id");
