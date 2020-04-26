
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
      'Covenant House',
      '550 10th Ave
New York, NY 10018',
      'New York',
      'NY',
      'Call Nancy (ED of Covenant House - NYC) at (347) 891-2511 or Leslie Abbey (COO) at (917) 991-4540',
      'Yes',
      '40.7586536',
      '-73.9958359'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Covenant House'
        AND o.latitude = '40.7586536'
        AND o.longitude = '-73.9958359'));

COMMIT;
