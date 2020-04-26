
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
      'Malta Med Emergent Care',
      '6 Medical Park Dr
Malta, NY 12020',
      'Malta',
      'NY',
      'Mail',
      'Unsure',
      '42.9738332',
      '-73.8054215'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malta Med Emergent Care'
        AND o.latitude = '42.9738332'
        AND o.longitude = '-73.8054215'));

COMMIT;
