
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
      'Med Stop Urgent Care',
      '283 Madonna Rd
San Luis Obispo, CA 93405',
      'San Luis Obispo',
      'CA',
      'Mail or drop off',
      'Unsure',
      '35.2612831',
      '-120.6762991'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Med Stop Urgent Care'
        AND o.latitude = '35.2612831'
        AND o.longitude = '-120.6762991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Med Stop Urgent Care'
        AND o.latitude = '35.2612831'
        AND o.longitude = '-120.6762991'));

COMMIT;
