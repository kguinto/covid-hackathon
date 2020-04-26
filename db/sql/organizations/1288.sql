
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
      'One Medical - Pac Heights',
      '2410 California St
San Francisco, CA 94115',
      'San Francisco',
      'CA',
      'closes at 5p',
      'Yes',
      '37.7890972',
      '-122.4344283'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical - Pac Heights'
        AND o.latitude = '37.7890972'
        AND o.longitude = '-122.4344283'));

COMMIT;
