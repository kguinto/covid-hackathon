
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
      'Easy Access Urgent Care',
      '222 E Cole Blvd
Calexico, CA 92231',
      'Calexico',
      'CA',
      'Mail',
      'Unsure',
      '32.6934073',
      '-115.4951032'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Easy Access Urgent Care'
        AND o.latitude = '32.6934073'
        AND o.longitude = '-115.4951032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Easy Access Urgent Care'
        AND o.latitude = '32.6934073'
        AND o.longitude = '-115.4951032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Easy Access Urgent Care'
        AND o.latitude = '32.6934073'
        AND o.longitude = '-115.4951032'));

COMMIT;
