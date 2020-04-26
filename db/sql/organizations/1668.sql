
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
      'KCS Health Center',
      '451 W Lincoln Ave #100
Anaheim, CA 92805',
      'Anaheim',
      'CA',
      '',
      'Yes',
      '33.8346052',
      '-117.9189431'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'KCS Health Center'
        AND o.latitude = '33.8346052'
        AND o.longitude = '-117.9189431'));

COMMIT;
