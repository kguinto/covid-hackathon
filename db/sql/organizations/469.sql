
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
      'Strive Express Care',
      '3205 N University Dr Suite E
Nacogdoches, TX 75965',
      'Nacogdoches',
      'TX',
      'USPS mail',
      '',
      '31.6330435',
      '-94.6412414'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Strive Express Care'
        AND o.latitude = '31.6330435'
        AND o.longitude = '-94.6412414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Strive Express Care'
        AND o.latitude = '31.6330435'
        AND o.longitude = '-94.6412414'));

COMMIT;
