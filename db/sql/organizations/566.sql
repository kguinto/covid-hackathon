
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
      'AFC Urgent Care',
      '67 E Ridgewood Ave
Paramus, NJ 07652',
      'Paramus',
      'NJ',
      'pick up',
      'Unused',
      '40.9677932',
      '-74.073201'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.9677932'
        AND o.longitude = '-74.073201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.9677932'
        AND o.longitude = '-74.073201'));

COMMIT;
