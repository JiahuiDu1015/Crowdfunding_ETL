-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/220L7N
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaigns" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" text   NOT NULL,
    "goal" decimal   NOT NULL,
    "pledged" decimal   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" datetime   NOT NULL,
    "end_date" datetime   NOT NULL,
    "category_id" int   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_Campaigns" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Categories" (
    "category_id" int   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategories" (
    "subcategory_id" int   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_category_id" FOREIGN KEY("category_id")
REFERENCES "Categories" ("category_id");

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategories" ("subcategory_id");

