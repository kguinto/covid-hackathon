
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
      'Saint Mary''s Regional Medical Center',
      '235 W 6th St 
Reno NV 89503',
      'Reno',
      'NV',
      'Please drop off at the Arlington entrance. Please direct the masks to the radiology department',
      'Yes',
      '39.5324265',
      '-119.820038'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary''s Regional Medical Center'
        AND o.latitude = '39.5324265'
        AND o.longitude = '-119.820038'));

COMMIT;
