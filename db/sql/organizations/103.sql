
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
      'Phelps Health ',
      '1000 W 10th St
Rolla, MO 65401',
      'Rolla',
      'MO',
      'Call (573)458-8899',
      'Unused only',
      '37.9526051',
      '-91.7853512'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Phelps Health '
        AND o.latitude = '37.9526051'
        AND o.longitude = '-91.7853512'));

COMMIT;
