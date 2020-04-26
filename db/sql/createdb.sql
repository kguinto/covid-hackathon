-- CREATE DATABASE help_directory;

-- \connect help_directory;

CREATE TABLE organizations(
	id BIGSERIAL PRIMARY KEY NOT NULL,
	name varchar(100) NOT NULL,
	contact_email varchar(200),
	zip_code varchar(50),
	description text,
	image_url text,
	latitude varchar(100),
	longitude varchar(100),
	address text,
	accepts_opened text,
	instructions text,
	city varchar(500),
	state varchar(100)
);

CREATE TABLE organization_needs(
	org_id int,
	need varchar(200) NOT NULL
);
