
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
      'Enloe Medical Center',
      '1531 Esplanade
Chico, CA 95926',
      'Chico',
      'CA',
      'Any',
      'Yes',
      '39.7425867',
      '-121.849727'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enloe Medical Center'
        AND o.latitude = '39.7425867'
        AND o.longitude = '-121.849727'));

COMMIT;
