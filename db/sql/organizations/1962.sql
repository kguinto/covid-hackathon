
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
      'Memorial Hospital ',
      '4500 13th St
Gulfport, MS 39501',
      'Gulfport ',
      'MS',
      'Attn: Aimee Robertson',
      'Yes',
      '30.3672775',
      '-89.1152165'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital '
        AND o.latitude = '30.3672775'
        AND o.longitude = '-89.1152165'));

COMMIT;
