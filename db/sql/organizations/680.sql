
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
      'Michigan Avenue Immediate Care',
      '180 N. Michigan Ave, #1605
Chicago, IL 60601',
      'Chicago',
      'IL',
      '16th floor
',
      'Yes',
      '41.8855118',
      '-87.6248445'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Avenue Immediate Care'
        AND o.latitude = '41.8855118'
        AND o.longitude = '-87.6248445'));

COMMIT;
