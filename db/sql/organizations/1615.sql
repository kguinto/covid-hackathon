
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
      'Capital Transitional Care',
      '6821 24th St
Sacramento, CA 95822',
      'Sacramento',
      'CA',
      'Front door ring bell',
      'Yes',
      '38.5023198',
      '-121.4819475'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Transitional Care'
        AND o.latitude = '38.5023198'
        AND o.longitude = '-121.4819475'));

COMMIT;
