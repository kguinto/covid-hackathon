
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
      'Sonoma Valley Community Health Center',
      '19270 Sonoma Hwy
Sonoma, CA 95476',
      'Sonoma',
      'CA',
      'Drop off at Health Center. Staff will receive.',
      'Yes',
      '38.2987344',
      '-122.4744453'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sonoma Valley Community Health Center'
        AND o.latitude = '38.2987344'
        AND o.longitude = '-122.4744453'));

COMMIT;
