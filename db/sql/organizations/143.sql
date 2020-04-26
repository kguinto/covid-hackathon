
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
      'Spring Valley Hospital (Universal Health Services)',
      '5400 South Rainbow Blvd
Las Vegas, NV 89118',
      'Las Vegas',
      'NV',
      'Used masks ok. Delivery only, no visitors allowed so please call unit manager 702-853-3200',
      'Yes',
      '36.0900057',
      '-115.2402308'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spring Valley Hospital (Universal Health Services)'
        AND o.latitude = '36.0900057'
        AND o.longitude = '-115.2402308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spring Valley Hospital (Universal Health Services)'
        AND o.latitude = '36.0900057'
        AND o.longitude = '-115.2402308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spring Valley Hospital (Universal Health Services)'
        AND o.latitude = '36.0900057'
        AND o.longitude = '-115.2402308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spring Valley Hospital (Universal Health Services)'
        AND o.latitude = '36.0900057'
        AND o.longitude = '-115.2402308'));

COMMIT;
