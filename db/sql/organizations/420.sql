
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
      'Saint Clare''s Health',
      '25 Pocono Rd
Denville, NJ 07834',
      'Denville',
      'NJ',
      'Delivery',
      'unsure',
      '40.894894',
      '-74.4654098'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Health'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

COMMIT;
