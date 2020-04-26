
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
      'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic',
      '3200 Kearney St
Fremont, CA 94538',
      'Fremont ',
      'CA',
      'Drop off at 7688 Balmoral Way, Fremont, CA | Contact Raya Elias-Petros at 650-853-4808 or Eliaspr@sutterhealth.org',
      'Yes',
      '37.54818',
      '-121.973592'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic'
        AND o.latitude = '37.54818'
        AND o.longitude = '-121.973592'));

COMMIT;
