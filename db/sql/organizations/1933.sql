
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
      'Tacoma General ',
      '402 S J St
Tacoma, WA 98405',
      'Tacoma',
      'WA',
      'Drop off 11-2 Mon-Fri',
      'No',
      '47.2593292',
      '-122.4521027'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593292'
        AND o.longitude = '-122.4521027'));

COMMIT;
