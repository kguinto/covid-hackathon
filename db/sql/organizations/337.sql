
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
      'Healthy Urgent Care',
      '27204 Beck Rd
Novi, MI 48374',
      'Novi',
      'MI',
      'Pick up or drop off (details unknown)',
      'Unsure',
      '42.4907586',
      '-83.5147044'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Urgent Care'
        AND o.latitude = '42.4907586'
        AND o.longitude = '-83.5147044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Urgent Care'
        AND o.latitude = '42.4907586'
        AND o.longitude = '-83.5147044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Urgent Care'
        AND o.latitude = '42.4907586'
        AND o.longitude = '-83.5147044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Mask with face shield',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Urgent Care'
        AND o.latitude = '42.4907586'
        AND o.longitude = '-83.5147044'));

COMMIT;
