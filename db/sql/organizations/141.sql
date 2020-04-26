
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
      'MercyOne North Iowa Medical Center',
      '1000 4th St SW
Mason City, IA 50401',
      'Mason City',
      'IA',
      'Mail, only new masks.',
      'No',
      '43.1500243',
      '-93.2165482'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MercyOne North Iowa Medical Center'
        AND o.latitude = '43.1500243'
        AND o.longitude = '-93.2165482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MercyOne North Iowa Medical Center'
        AND o.latitude = '43.1500243'
        AND o.longitude = '-93.2165482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'MercyOne North Iowa Medical Center'
        AND o.latitude = '43.1500243'
        AND o.longitude = '-93.2165482'));

COMMIT;
