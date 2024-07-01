--noqa: disable=RF04

-- hubspot owner
create table if not exists hubspot_owner (
  owner_id varchar,
  first_name varchar,
  last_name varchar,
  email varchar,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  user_id varchar,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (owner_id)
);

-- hubspot contact
create table if not exists hubspot_contact (
  contact_id varchar,
  firstname varchar,
  lastname varchar,
  email varchar,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  title varchar,
  gender varchar,
  age integer,
  date_of_birth varchar,
  phone varchar,

  address varchar,
  zip varchar,
  city varchar,
  state varchar,
  country varchar,

  website varchar,

  company varchar,

  lead_status varchar,
  lifecycle_stage varchar,
  relationship_type varchar,

  became_customer_at timestamp,

  timezone varchar,
  locale varchar,
  language varchar,

  contact_source_id varchar,
  contact_source varchar,
  contact_source_label varchar,
  contact_source_detail_1 varchar,
  contact_source_detail_2 varchar,
  contact_source_detail_3 varchar,

  owner_id varchar,
  owner_assigned_at timestamp,
  team_id varchar,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (contact_id)
);

-- hubspot company
create table if not exists hubspot_company (
  company_id varchar,
  name varchar,
  domain varchar,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  description varchar,
  industry varchar,
  company_size varchar,

  coc_number varchar,
  rsin_number varchar,
  vat_number varchar,
  legal_form varchar,

  phone varchar,

  address varchar,
  zip varchar,
  city varchar,
  state varchar,
  country varchar,

  website varchar,

  lead_status varchar,
  lifecycle_stage varchar,
  relationship_type varchar,

  became_customer_at timestamp,

  timezone varchar,

  merged_company_ids varchar,
  parent_company_id varchar,

  company_source_id varchar,
  company_source varchar,
  company_source_label varchar,
  company_source_detail_1 varchar,
  company_source_detail_2 varchar,
  company_source_detail_3 varchar,

  owner_id varchar,
  owner_assigned_at timestamp,
  team_id varchar,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (company_id)
);


-- hubspot product
create table if not exists hubspot_product (
  product_id varchar,
  name varchar,
  sku varchar,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  description varchar,
  product_type varchar,
  image_url varchar,
  product_url varchar,

  billing_frequency varchar,
  price float,
  cost_of_goods_sold float,
  tax float,

  -- price_eur float,

  term varchar,

  merged_product_ids varchar,

  product_source_id varchar,
  product_source varchar,
  product_source_label varchar,
  product_source_detail_1 varchar,
  product_source_detail_2 varchar,
  product_source_detail_3 varchar,
  product_source_initiated_by varchar,

  owner_id varchar,
  owner_assigned_at timestamp,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (product_id)
);

-- hubspot deal pipeline
create table if not exists hubspot_pipeline (
  pipeline_id varchar,
  label varchar,
  sort_order integer,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (pipeline_id)
);

-- hubspot deal pipeline stage
create table if not exists hubspot_pipeline_stage (
  pipeline_id varchar,
  stage_id varchar,
  label varchar,
  sort_order integer,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  probability float,
  is_closed boolean,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (pipeline_id, stage_id)
);

-- hubspot deal
create table if not exists hubspot_deal (
  deal_id varchar,
  name varchar,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  closed_at timestamp,

  currency varchar,
  amount float,

  mrr float,
  arr float,
  acv float,
  tcv float,

  pipeline varchar,
  deal_stage varchar,

  deal_source_id varchar,
  deal_source varchar,
  deal_source_label varchar,
  deal_source_detail_1 varchar,
  deal_source_detail_2 varchar,
  deal_source_detail_3 varchar,

  owner_id varchar,
  owner_assigned_at timestamp,
  team_id varchar,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  subscription_status varchar,
  billing_period varchar,
  billing_interval integer,
  subscription_length varchar,

  has_trial boolean,

  started_at timestamp,
  trial_ends_at timestamp,
  next_payment_at timestamp,
  last_payment_at timestamp,
  renews_on timestamp,
  cancelled_at timestamp,
  ended_at timestamp,

  business_line varchar,

  domain_name varchar,

  primary key (deal_id)
);

-- hubspot deal line item
create table if not exists hubspot_line_item (
  line_item_id varchar,
  name varchar,

  created_at timestamp,
  created_by varchar,
  updated_at timestamp,
  updated_by varchar,

  position_on_quote integer,

  product_id varchar,
  product varchar,
  sku varchar,
  description varchar,

  term varchar,
  billing_frequency varchar,

  quantity varchar,
  currency varchar,
  price float,
  cost_of_goods_sold float,
  discount_percentage float,
  discount float,
  tax float,

  amount float,
  mrr float,
  arr float,
  acv float,
  tcv float,

  line_item_source_id varchar,
  line_item_source varchar,
  line_item_source_label varchar,
  line_item_source_detail_1 varchar,
  line_item_source_detail_2 varchar,
  line_item_source_detail_3 varchar,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (line_item_id)
);

-- hubspot association contact_to_company
create table if not exists hubspot_association__contact_to_company (
  association varchar,

  contact_id varchar not null,
  company_id varchar not null,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (contact_id, company_id)
);

-- hubspot association company_to_contact
create table if not exists hubspot_association__company_to_contact (
  association varchar,

  company_id varchar not null,
  contact_id varchar not null,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (company_id, contact_id)
);

-- hubspot association contact_to_deal
create table if not exists hubspot_association__contact_to_deal (
  association varchar,

  contact_id varchar not null,
  deal_id varchar not null,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (contact_id, deal_id)
);

-- hubspot association deal_to_contact
create table if not exists hubspot_association__deal_to_contact (
  association varchar,

  deal_id varchar not null,
  contact_id varchar not null,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (deal_id, contact_id)
);

-- hubspot association deal_to_line_item
create table if not exists hubspot_association__deal_to_line_item (
  association varchar,

  deal_id varchar not null,
  line_item_id varchar not null,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (deal_id, line_item_id)
);

-- hubspot association line_item_to_deal
create table if not exists hubspot_association__line_item_to_deal (
  association varchar,

  line_item_id varchar not null,
  deal_id varchar not null,

  is_archived boolean,
  archived_at timestamp,

  __hevo__ingested_at integer,
  __hevo__loaded_at integer,

  primary key (line_item_id, deal_id)
);
