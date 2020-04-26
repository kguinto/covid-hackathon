
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
      'Spotsylvania Regional Medical Center',
      '4600 Spotsylvania Pkwy
Fredericksburg, VA 22408',
      'Fredericksburg',
      'VA',
      '"While we have the supplies we need at this time, we continue our COVID-19 planning by accessing the resources, support and best practices across HCA Healthcare to help ensure we remain able to meet the needs of the communities we serve as the situation continues to evolve. We appreciate your willingness to assist in these efforts, and have placed a mask donation box at the main entrance to the hospital to provide an easy location for drop offs. The main entrance is open between the hours of 5:30AM and 9PM. Thank you for your support!"',
      'Unsure',
      '38.2181996',
      '-77.4961447'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spotsylvania Regional Medical Center'
        AND o.latitude = '38.2181996'
        AND o.longitude = '-77.4961447'));

COMMIT;
