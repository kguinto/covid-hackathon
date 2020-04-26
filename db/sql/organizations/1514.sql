
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
      'The Doctors Office of Brick',
      '686 NJ-70
Brick Township, NJ 08723',
      'Brick Township',
      'NJ',
      '',
      'Yes',
      '40.0622421',
      '-74.1435165'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Brick'
        AND o.latitude = '40.0622421'
        AND o.longitude = '-74.1435165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Brick'
        AND o.latitude = '40.0622421'
        AND o.longitude = '-74.1435165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Brick'
        AND o.latitude = '40.0622421'
        AND o.longitude = '-74.1435165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Brick'
        AND o.latitude = '40.0622421'
        AND o.longitude = '-74.1435165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Brick'
        AND o.latitude = '40.0622421'
        AND o.longitude = '-74.1435165'));

COMMIT;
