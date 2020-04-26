
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
      'Blue Ridge Mountain Recovery Center',
      '255 Depot Street, Suite 200
Ball Ground, GA 30107',
      'Ball Ground',
      'GA',
      'Please call 678-454-6403 to arrange mailing or drop off.',
      'Yes',
      '34.3349507',
      '-84.3776146'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blue Ridge Mountain Recovery Center'
        AND o.latitude = '34.3349507'
        AND o.longitude = '-84.3776146'));

COMMIT;
