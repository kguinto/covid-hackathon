
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
      'Vintage Faire Nursing and Rehabilitation',
      '3620 Dale Rd Building B
Modesto, CA 95356',
      'Modesto',
      'CA',
      'Central Supply',
      'Yes',
      '37.6915818',
      '-121.0486047'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vintage Faire Nursing and Rehabilitation'
        AND o.latitude = '37.6915818'
        AND o.longitude = '-121.0486047'));

COMMIT;
