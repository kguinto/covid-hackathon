
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
      'Brea Urgent Care',
      '395 W Central Ave
Brea, CA 92821',
      'Brea',
      'CA',
      'Unknown',
      'Unsure',
      '33.9324644',
      '-117.9019689'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brea Urgent Care'
        AND o.latitude = '33.9324644'
        AND o.longitude = '-117.9019689'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brea Urgent Care'
        AND o.latitude = '33.9324644'
        AND o.longitude = '-117.9019689'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brea Urgent Care'
        AND o.latitude = '33.9324644'
        AND o.longitude = '-117.9019689'));

COMMIT;
