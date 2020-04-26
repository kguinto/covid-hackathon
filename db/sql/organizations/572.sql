
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
      'Methodist Hospital',
      '6500 Excelsior Blvd
St Louis Park, MN 55426',
      'St Louis Park',
      'MN',
      'Mail or drop off',
      'Unsure',
      '44.9306363',
      '-93.3621119'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9306363'
        AND o.longitude = '-93.3621119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9306363'
        AND o.longitude = '-93.3621119'));

COMMIT;
