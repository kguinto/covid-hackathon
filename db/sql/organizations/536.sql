
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
      'Mount Sinai Queens',
      '25-10 30th Ave
Queens, NY 11102',
      'New York - Queens',
      'NY',
      'Delivery to hospital',
      'Unsure',
      '40.7683849',
      '-73.9248953'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Queens'
        AND o.latitude = '40.7683849'
        AND o.longitude = '-73.9248953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Queens'
        AND o.latitude = '40.7683849'
        AND o.longitude = '-73.9248953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Queens'
        AND o.latitude = '40.7683849'
        AND o.longitude = '-73.9248953'));

COMMIT;
