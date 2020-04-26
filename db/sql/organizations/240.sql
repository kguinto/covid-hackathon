
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
      'St. Jude Medical Center',
      '101 E Valencia Mesa Dr
Fullerton, CA 92835',
      'Fullerton',
      'CA',
      'Please contact mandi.archuleta@stjoe.org to coordinate drop off.',
      'Yes',
      '33.8943451',
      '-117.9272201'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Medical Center'
        AND o.latitude = '33.8943451'
        AND o.longitude = '-117.9272201'));

COMMIT;
