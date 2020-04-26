
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
      'SCDDSN Coastal Center',
      '9995 Miles Jamison Rd
Summerville, SC 29485',
      'Summerville',
      'SC',
      'Drop off at Switchboard',
      'Yes',
      '32.9853915',
      '-80.1489846'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'SCDDSN Coastal Center'
        AND o.latitude = '32.9853915'
        AND o.longitude = '-80.1489846'));

COMMIT;
