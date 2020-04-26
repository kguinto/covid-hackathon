
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
      'Kaiser Permanente Panorama City Medical Center',
      '10550 Wilshire Blvd
Los Angeles, CA 90024',
      'Panorama City',
      'CA',
      'Residential address. ',
      'Yes',
      '34.062601',
      '-118.432301'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Panorama City Medical Center'
        AND o.latitude = '34.062601'
        AND o.longitude = '-118.432301'));

COMMIT;
