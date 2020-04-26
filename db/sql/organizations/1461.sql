
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
      'The Doctors Office of New Jersey',
      '85 Godwin Ave
Midland Park, NJ 07432',
      'MIDLAND PARK',
      'NJ',
      '',
      'Yes',
      '40.9844468',
      '-74.1392715'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of New Jersey'
        AND o.latitude = '40.9844468'
        AND o.longitude = '-74.1392715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of New Jersey'
        AND o.latitude = '40.9844468'
        AND o.longitude = '-74.1392715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of New Jersey'
        AND o.latitude = '40.9844468'
        AND o.longitude = '-74.1392715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of New Jersey'
        AND o.latitude = '40.9844468'
        AND o.longitude = '-74.1392715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of New Jersey'
        AND o.latitude = '40.9844468'
        AND o.longitude = '-74.1392715'));

COMMIT;
