
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
      'Total Access Urgent Care',
      '2060 Hampton Ave
St. Loui, MO 63139',
      'St. Louis',
      'MO',
      '',
      'Unsure',
      '38.6178478',
      '-90.2872087'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Access Urgent Care'
        AND o.latitude = '38.6178478'
        AND o.longitude = '-90.2872087'));

COMMIT;
