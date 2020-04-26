
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
      'Liberty Primary Care',
      '1749 Hooper Ave Suite 203
Toms River, NJ 08753',
      'Toms River',
      'NJ',
      'Mail',
      'Unsure',
      '40.0056235',
      '-74.1493654'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Primary Care'
        AND o.latitude = '40.0056235'
        AND o.longitude = '-74.1493654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Primary Care'
        AND o.latitude = '40.0056235'
        AND o.longitude = '-74.1493654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Primary Care'
        AND o.latitude = '40.0056235'
        AND o.longitude = '-74.1493654'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95 masks x 4',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Primary Care'
        AND o.latitude = '40.0056235'
        AND o.longitude = '-74.1493654'));

COMMIT;
