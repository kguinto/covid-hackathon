
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
      'Emory Hospital',
      '3539 Church St
Clarkston, GA 30021',
      'Clarkston',
      'GA',
      '',
      'Yes',
      '33.8018318',
      '-84.252755'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory Hospital'
        AND o.latitude = '33.8018318'
        AND o.longitude = '-84.252755'));

COMMIT;
