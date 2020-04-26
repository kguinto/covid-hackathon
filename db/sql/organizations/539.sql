
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
      'Mercy Hospital & Medical Center',
      '2525 Michigan Ave
Chicago, IL 60616',
      'Chicago',
      'IL',
      'Please call cell to discuss: 773-343-8813',
      'Unsure',
      '41.8464579',
      '-87.623414'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital & Medical Center'
        AND o.latitude = '41.8464579'
        AND o.longitude = '-87.623414'));

COMMIT;
