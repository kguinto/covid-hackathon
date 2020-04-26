
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
      'University of Cincinnati Medical Center',
      '234 Goodman St
Cincinnati, OH 45219',
      'Cincinnati',
      'OH',
      '',
      'Yes',
      '39.1374112',
      '-84.5036728'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Cincinnati Medical Center'
        AND o.latitude = '39.1374112'
        AND o.longitude = '-84.5036728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Cincinnati Medical Center'
        AND o.latitude = '39.1374112'
        AND o.longitude = '-84.5036728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Cincinnati Medical Center'
        AND o.latitude = '39.1374112'
        AND o.longitude = '-84.5036728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Cincinnati Medical Center'
        AND o.latitude = '39.1374112'
        AND o.longitude = '-84.5036728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Cincinnati Medical Center'
        AND o.latitude = '39.1374112'
        AND o.longitude = '-84.5036728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Cincinnati Medical Center'
        AND o.latitude = '39.1374112'
        AND o.longitude = '-84.5036728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Cincinnati Medical Center'
        AND o.latitude = '39.1374112'
        AND o.longitude = '-84.5036728'));

COMMIT;
