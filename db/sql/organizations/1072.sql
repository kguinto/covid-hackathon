
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
      'Skyland Care Center',
      '193 Asheville Hwy
Sylva, NC 28779',
      'Sylva',
      'NC',
      'At front door under awning',
      'Yes',
      '35.3773891',
      '-83.2140412'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Skyland Care Center'
        AND o.latitude = '35.3773891'
        AND o.longitude = '-83.2140412'));

COMMIT;
