
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
      'Baltimore Washington Medical Center',
      '301 Hospital Dr
Glen Burnie, MD 21061',
      'Glen Burnie',
      'MD',
      'To ER front desk ',
      'Yes',
      '39.1376872',
      '-76.6228375'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baltimore Washington Medical Center'
        AND o.latitude = '39.1376872'
        AND o.longitude = '-76.6228375'));

COMMIT;
