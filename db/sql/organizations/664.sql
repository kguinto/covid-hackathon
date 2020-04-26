
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
      'Community Options Inc. ',
      '1117 Old Berwick Road 
Bloomsburg, PA 17815',
      'Bloomsburg ',
      'PA',
      'curbside dropoff',
      'Yes',
      '41.0015817',
      '-76.4338679'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '41.0015817'
        AND o.longitude = '-76.4338679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '41.0015817'
        AND o.longitude = '-76.4338679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '41.0015817'
        AND o.longitude = '-76.4338679'));

COMMIT;
