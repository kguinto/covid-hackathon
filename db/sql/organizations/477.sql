
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
      'Saratoga Hospital',
      '211 Church St
Saratoga Springs, NY 12866',
      'Saratoga Springs',
      'NY',
      'Mail',
      '',
      '43.0862373',
      '-73.7976256'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saratoga Hospital'
        AND o.latitude = '43.0862373'
        AND o.longitude = '-73.7976256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saratoga Hospital'
        AND o.latitude = '43.0862373'
        AND o.longitude = '-73.7976256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saratoga Hospital'
        AND o.latitude = '43.0862373'
        AND o.longitude = '-73.7976256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Chemical impervious gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saratoga Hospital'
        AND o.latitude = '43.0862373'
        AND o.longitude = '-73.7976256'));

COMMIT;
