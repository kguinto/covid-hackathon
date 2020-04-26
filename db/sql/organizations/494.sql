
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
      'LI Urgent Care',
      '403 Little E Neck Rd
West Babylon, NY 11704',
      'West Babylon',
      'NY',
      'Delivery, UPS pick-up',
      'Unsure',
      '40.7038085',
      '-73.3434443'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'LI Urgent Care'
        AND o.latitude = '40.7038085'
        AND o.longitude = '-73.3434443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'LI Urgent Care'
        AND o.latitude = '40.7038085'
        AND o.longitude = '-73.3434443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'LI Urgent Care'
        AND o.latitude = '40.7038085'
        AND o.longitude = '-73.3434443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'LI Urgent Care'
        AND o.latitude = '40.7038085'
        AND o.longitude = '-73.3434443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'LI Urgent Care'
        AND o.latitude = '40.7038085'
        AND o.longitude = '-73.3434443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Sani-Wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'LI Urgent Care'
        AND o.latitude = '40.7038085'
        AND o.longitude = '-73.3434443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Lysol Spray',
    (SELECT id FROM organizations o
      WHERE o.name = 'LI Urgent Care'
        AND o.latitude = '40.7038085'
        AND o.longitude = '-73.3434443'));

COMMIT;
