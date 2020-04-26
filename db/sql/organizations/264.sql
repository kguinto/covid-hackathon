
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
      'Mount Sinai',
      '172 East 108th Street
New York, NY 10029',
      'New York - Manhattan',
      'NY',
      'Can pick it up or curbside is fine, just call 646-641-5883',
      'Yes',
      '40.7930326',
      '-73.9445618'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai'
        AND o.latitude = '40.7930326'
        AND o.longitude = '-73.9445618'));

COMMIT;
