
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
      'Lankenau Medical Center',
      '100 E Lancaster Ave
Wynnewood, PA 19096',
      'Wynnwood ',
      'PA',
      'Contact email address for specific instructions: covidsupplydonations@mlhs.org',
      'Yes',
      '39.9880032',
      '-75.2634923'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lankenau Medical Center'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

COMMIT;
