
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
      'Midwest Medical Transport Company',
      '4020 S 147th St
Omaha, NE 68137',
      'Omaha',
      'NE',
      '4020 S 147th St, ATTN: Matt M',
      'No',
      '41.2200022',
      '-96.1425087'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('EMS Safety Glasses',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Medical Transport Company'
        AND o.latitude = '41.2200022'
        AND o.longitude = '-96.1425087'));

COMMIT;
