
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
      'Hubert Humphrey Comprehensive Health Center',
      '5850 S Main St
Los Angeles, CA 90003',
      'Los Angeles',
      'CA',
      'Main entrance or call 714-308-3819 and I can bring them inside',
      'Yes',
      '33.9883999',
      '-118.273401'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hubert Humphrey Comprehensive Health Center'
        AND o.latitude = '33.9883999'
        AND o.longitude = '-118.273401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hubert Humphrey Comprehensive Health Center'
        AND o.latitude = '33.9883999'
        AND o.longitude = '-118.273401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hubert Humphrey Comprehensive Health Center'
        AND o.latitude = '33.9883999'
        AND o.longitude = '-118.273401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hubert Humphrey Comprehensive Health Center'
        AND o.latitude = '33.9883999'
        AND o.longitude = '-118.273401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hubert Humphrey Comprehensive Health Center'
        AND o.latitude = '33.9883999'
        AND o.longitude = '-118.273401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hubert Humphrey Comprehensive Health Center'
        AND o.latitude = '33.9883999'
        AND o.longitude = '-118.273401'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hubert Humphrey Comprehensive Health Center'
        AND o.latitude = '33.9883999'
        AND o.longitude = '-118.273401'));

COMMIT;
