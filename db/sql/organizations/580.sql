
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
      'The Woman''s Health Pavillion',
      '372 Post Ave
Westbury, NY 11590',
      'Westbury',
      'NY',
      'Pick up or mail',
      'Unsure',
      '40.7621742',
      '-73.5867873'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Woman''s Health Pavillion'
        AND o.latitude = '40.7621742'
        AND o.longitude = '-73.5867873'));

COMMIT;
