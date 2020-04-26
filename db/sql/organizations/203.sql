
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Presbyterian St. Luke''s Medical Center',
      '2001 N High Street
Denver, CO 80205',
      'Denver',
      'CO',
      'Emergency (corner of 19th Ave & High Street)',
      'Yes',
      '39.746698',
      '-104.9653732'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presbyterian St. Luke''s Medical Center'
        AND o.latitude = '39.746698'
        AND o.longitude = '-104.9653732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presbyterian St. Luke''s Medical Center'
        AND o.latitude = '39.746698'
        AND o.longitude = '-104.9653732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presbyterian St. Luke''s Medical Center'
        AND o.latitude = '39.746698'
        AND o.longitude = '-104.9653732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Presbyterian St. Luke''s Medical Center'
        AND o.latitude = '39.746698'
        AND o.longitude = '-104.9653732'));

COMMIT;
