
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
      'Clinton Family Health Center',
      '293 Upper Falls Blvd
Rochester, NY 14605',
      'Rochester',
      'NY',
      'Email then drop off at site',
      'Unsure',
      '43.1695637',
      '-77.6097112'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton Family Health Center'
        AND o.latitude = '43.1695637'
        AND o.longitude = '-77.6097112'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton Family Health Center'
        AND o.latitude = '43.1695637'
        AND o.longitude = '-77.6097112'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton Family Health Center'
        AND o.latitude = '43.1695637'
        AND o.longitude = '-77.6097112'));

COMMIT;
