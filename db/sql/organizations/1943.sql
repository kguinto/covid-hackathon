
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
      'North Vista Hospital ',
      '4011 E Lake Mead Blvd
Las Vegas, NV 89115',
      'Las vegas',
      'NV',
      'Please call above number ahead of time 702-929-4040',
      'Yes',
      '36.1953393',
      '-115.0867655'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Vista Hospital '
        AND o.latitude = '36.1953393'
        AND o.longitude = '-115.0867655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Vista Hospital '
        AND o.latitude = '36.1953393'
        AND o.longitude = '-115.0867655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Vista Hospital '
        AND o.latitude = '36.1953393'
        AND o.longitude = '-115.0867655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Vista Hospital '
        AND o.latitude = '36.1953393'
        AND o.longitude = '-115.0867655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Vista Hospital '
        AND o.latitude = '36.1953393'
        AND o.longitude = '-115.0867655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Vista Hospital '
        AND o.latitude = '36.1953393'
        AND o.longitude = '-115.0867655'));

COMMIT;
