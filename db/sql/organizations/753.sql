
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
      'Urgent Care by the Bay',
      '1208 US-98
Daphne, AL 36526',
      'Daphne',
      'AL',
      'any, will pay postage (details missing)',
      'Unsure',
      '30.5959521',
      '-87.8971314'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care by the Bay'
        AND o.latitude = '30.5959521'
        AND o.longitude = '-87.8971314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care by the Bay'
        AND o.latitude = '30.5959521'
        AND o.longitude = '-87.8971314'));

COMMIT;
