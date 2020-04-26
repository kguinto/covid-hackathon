
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
      'St. Agnes Hospital',
      '900 S Caton Ave
Baltimore, MD 21229',
      'Baltimore',
      'MD',
      'Pick up',
      'Unsure',
      '39.2716024',
      '-76.6737365'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Agnes Hospital'
        AND o.latitude = '39.2716024'
        AND o.longitude = '-76.6737365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Agnes Hospital'
        AND o.latitude = '39.2716024'
        AND o.longitude = '-76.6737365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Agnes Hospital'
        AND o.latitude = '39.2716024'
        AND o.longitude = '-76.6737365'));

COMMIT;
